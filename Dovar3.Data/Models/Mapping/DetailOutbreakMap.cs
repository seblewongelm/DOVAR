using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class DetailOutbreakMap : EntityTypeConfiguration<DetailOutbreak>
    {
        public DetailOutbreakMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.SeroType)
                .HasMaxLength(50);

            this.Property(t => t.OutbreakRefNo)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("DetailOutbreak");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.AgeGroupId).HasColumnName("AgeGroupId");
            this.Property(t => t.MonthlySummaryId).HasColumnName("MonthlySummaryId");
            this.Property(t => t.DiagnosisId).HasColumnName("DiagnosisId");
            this.Property(t => t.StatusId).HasColumnName("StatusId");
            this.Property(t => t.SeroType).HasColumnName("SeroType");
            this.Property(t => t.OutbreakRefNo).HasColumnName("OutbreakRefNo");
            this.Property(t => t.Longitude).HasColumnName("Longitude");
            this.Property(t => t.Latitude).HasColumnName("Latitude");
            this.Property(t => t.LocationId).HasColumnName("LocationId");
            this.Property(t => t.DateReported).HasColumnName("DateReported");
            this.Property(t => t.DateFirstCase).HasColumnName("DateFirstCase");
            this.Property(t => t.Sex).HasColumnName("Sex");
            this.Property(t => t.SpeciesId).HasColumnName("SpeciesId");
            this.Property(t => t.Cases).HasColumnName("Cases");
            this.Property(t => t.Deaths).HasColumnName("Deaths");
            this.Property(t => t.Slaughtered).HasColumnName("Slaughtered");
            this.Property(t => t.TotalCases).HasColumnName("TotalCases");
            this.Property(t => t.TotalDeaths).HasColumnName("TotalDeaths");
            this.Property(t => t.TotalSlaughtered).HasColumnName("TotalSlaughtered");
            this.Property(t => t.InfectedUnits).HasColumnName("InfectedUnits");
            this.Property(t => t.TypeOfUnit).HasColumnName("TypeOfUnit");

            // Relationships
            this.HasOptional(t => t.AgeGroup)
                .WithMany(t => t.DetailOutbreaks)
                .HasForeignKey(d => d.AgeGroupId);
            this.HasOptional(t => t.Diagnosis)
                .WithMany(t => t.DetailOutbreaks)
                .HasForeignKey(d => d.DiagnosisId);
            this.HasOptional(t => t.Gender)
                .WithMany(t => t.DetailOutbreaks)
                .HasForeignKey(d => d.Sex);
            this.HasOptional(t => t.Location)
                .WithMany(t => t.DetailOutbreaks)
                .HasForeignKey(d => d.LocationId);
            this.HasOptional(t => t.MonthlySummary)
                .WithMany(t => t.DetailOutbreaks)
                .HasForeignKey(d => d.MonthlySummaryId);
            this.HasOptional(t => t.Species)
                .WithMany(t => t.DetailOutbreaks)
                .HasForeignKey(d => d.SpeciesId);
            this.HasOptional(t => t.Status)
                .WithMany(t => t.DetailOutbreaks)
                .HasForeignKey(d => d.StatusId);
            this.HasOptional(t => t.TypeOfFarming)
                .WithMany(t => t.DetailOutbreaks)
                .HasForeignKey(d => d.TypeOfUnit);

        }
    }
}
