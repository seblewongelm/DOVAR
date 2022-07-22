using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptreportingDiseasebyRegionMap : EntityTypeConfiguration<rptreportingDiseasebyRegion>
    {
        public rptreportingDiseasebyRegionMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Id, t.Year });

            // Properties
            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Year)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Month)
                .HasMaxLength(50);

            this.Property(t => t.Region)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            this.Property(t => t.Woreda)
                .HasMaxLength(100);

            this.Property(t => t.Disease)
                .HasMaxLength(50);

            this.Property(t => t.Species)
                .HasMaxLength(100);

            this.Property(t => t.TypeofUnit)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("rptreportingDiseasebyRegion");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Year).HasColumnName("Year");
            this.Property(t => t.Month).HasColumnName("Month");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.Species).HasColumnName("Species");
            this.Property(t => t.TotalCases).HasColumnName("TotalCases");
            this.Property(t => t.TotalDeaths).HasColumnName("TotalDeaths");
            this.Property(t => t.TotalSlaughtered).HasColumnName("TotalSlaughtered");
            this.Property(t => t.InfectedUnits).HasColumnName("InfectedUnits");
            this.Property(t => t.TypeofUnit).HasColumnName("TypeofUnit");
            this.Property(t => t.OutbreakStatusId).HasColumnName("OutbreakStatusId");
        }
    }
}
