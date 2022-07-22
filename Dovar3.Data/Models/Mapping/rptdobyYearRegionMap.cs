using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptdobyYearRegionMap : EntityTypeConfiguration<rptdobyYearRegion>
    {
        public rptdobyYearRegionMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Disease, t.Species, t.DateReported, t.DateFirstCase, t.FarmingSystem });

            // Properties
            this.Property(t => t.MonthName)
                .HasMaxLength(50);

            this.Property(t => t.RegionName)
                .HasMaxLength(100);

            this.Property(t => t.ZoneName)
                .HasMaxLength(100);

            this.Property(t => t.WoredaName)
                .HasMaxLength(100);

            this.Property(t => t.Disease)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Species)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.DiagnosisName)
                .HasMaxLength(50);

            this.Property(t => t.StatusName)
                .HasMaxLength(50);

            this.Property(t => t.FarmingSystem)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("rptdobyYearRegion");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.MonthName).HasColumnName("MonthName");
            this.Property(t => t.RegionName).HasColumnName("RegionName");
            this.Property(t => t.ZoneName).HasColumnName("ZoneName");
            this.Property(t => t.WoredaName).HasColumnName("WoredaName");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.NewOutbreak).HasColumnName("NewOutbreak");
            this.Property(t => t.ActiveOutbreak).HasColumnName("ActiveOutbreak");
            this.Property(t => t.Species).HasColumnName("Species");
            this.Property(t => t.NewCases).HasColumnName("NewCases");
            this.Property(t => t.Death).HasColumnName("Death");
            this.Property(t => t.Slaughtered).HasColumnName("Slaughtered");
            this.Property(t => t.AnimalAtRisk).HasColumnName("AnimalAtRisk");
            this.Property(t => t.DiagnosisName).HasColumnName("DiagnosisName");
            this.Property(t => t.StatusName).HasColumnName("StatusName");
            this.Property(t => t.DateReported).HasColumnName("DateReported");
            this.Property(t => t.DateFirstCase).HasColumnName("DateFirstCase");
            this.Property(t => t.Cases).HasColumnName("Cases");
            this.Property(t => t.Deaths).HasColumnName("Deaths");
            this.Property(t => t.Expr1).HasColumnName("Expr1");
            this.Property(t => t.TotalCases).HasColumnName("TotalCases");
            this.Property(t => t.TotalDeaths).HasColumnName("TotalDeaths");
            this.Property(t => t.TotalSlaughtered).HasColumnName("TotalSlaughtered");
            this.Property(t => t.InfectedUnits).HasColumnName("InfectedUnits");
            this.Property(t => t.FarmingSystem).HasColumnName("FarmingSystem");
            this.Property(t => t.LocationId).HasColumnName("LocationId");
        }
    }
}
