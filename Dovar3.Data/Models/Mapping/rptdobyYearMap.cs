using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptdobyYearMap : EntityTypeConfiguration<rptdobyYear>
    {
        public rptdobyYearMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Kebele, t.Disease, t.DateReported, t.DateFirstCase, t.Species, t.FarmingSystem });

            // Properties
            this.Property(t => t.MonthName)
                .HasMaxLength(50);

            this.Property(t => t.Region)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            this.Property(t => t.Woreda)
                .HasMaxLength(100);

            this.Property(t => t.Kebele)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Disease)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.OutbreakRefNo)
                .HasMaxLength(15);

            this.Property(t => t.Diagnose)
                .HasMaxLength(50);

            this.Property(t => t.Status)
                .HasMaxLength(50);

            this.Property(t => t.Species)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.AgeGroupName)
                .HasMaxLength(50);

            this.Property(t => t.FarmingSystem)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("rptdobyYear");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.MonthName).HasColumnName("MonthName");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.Kebele).HasColumnName("Kebele");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.OutbreakRefNo).HasColumnName("OutbreakRefNo");
            this.Property(t => t.Diagnose).HasColumnName("Diagnose");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.DateReported).HasColumnName("DateReported");
            this.Property(t => t.DateFirstCase).HasColumnName("DateFirstCase");
            this.Property(t => t.Species).HasColumnName("Species");
            this.Property(t => t.Cases).HasColumnName("Cases");
            this.Property(t => t.Deaths).HasColumnName("Deaths");
            this.Property(t => t.Slaughtered).HasColumnName("Slaughtered");
            this.Property(t => t.TotalCases).HasColumnName("TotalCases");
            this.Property(t => t.TotalDeaths).HasColumnName("TotalDeaths");
            this.Property(t => t.TotalSlaughtered).HasColumnName("TotalSlaughtered");
            this.Property(t => t.AgeGroupName).HasColumnName("AgeGroupName");
            this.Property(t => t.InfectedUnits).HasColumnName("InfectedUnits");
            this.Property(t => t.FarmingSystem).HasColumnName("FarmingSystem");
        }
    }
}
