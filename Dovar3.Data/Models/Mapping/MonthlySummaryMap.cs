using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class MonthlySummaryMap : EntityTypeConfiguration<MonthlySummary>
    {
        public MonthlySummaryMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            // Table & Column Mappings
            this.ToTable("MonthlySummary");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.MonthlyReportId).HasColumnName("MonthlyReportId");
            this.Property(t => t.DiseaseId).HasColumnName("DiseaseId");
            this.Property(t => t.SpeciesId).HasColumnName("SpeciesId");
            this.Property(t => t.NewOutbreak).HasColumnName("NewOutbreak");
            this.Property(t => t.ActiveOutbreak).HasColumnName("ActiveOutbreak");
            this.Property(t => t.NewCases).HasColumnName("NewCases");
            this.Property(t => t.Death).HasColumnName("Death");
            this.Property(t => t.Slaughtered).HasColumnName("Slaughtered");
            this.Property(t => t.AnimalAtRisk).HasColumnName("AnimalAtRisk");
            this.Property(t => t.Control).HasColumnName("Control");
            this.Property(t => t.Prophylaxis).HasColumnName("Prophylaxis");
            this.Property(t => t.OutbreakStatusId).HasColumnName("OutbreakStatusId");
            this.Property(t => t.Status).HasColumnName("Status");

            // Relationships
            this.HasOptional(t => t.Disease)
                .WithMany(t => t.MonthlySummaries)
                .HasForeignKey(d => d.DiseaseId);
            this.HasRequired(t => t.MonthlyReport)
                .WithMany(t => t.MonthlySummaries)
                .HasForeignKey(d => d.MonthlyReportId);
            this.HasRequired(t => t.OutbreakStatu)
                .WithMany(t => t.MonthlySummaries)
                .HasForeignKey(d => d.OutbreakStatusId);
            this.HasOptional(t => t.Species)
                .WithMany(t => t.MonthlySummaries)
                .HasForeignKey(d => d.SpeciesId);

        }
    }
}
