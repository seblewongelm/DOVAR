using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptVaccinationVsOutbreakMap : EntityTypeConfiguration<rptVaccinationVsOutbreak>
    {
        public rptVaccinationVsOutbreakMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Year, t.ReportMonth });

            // Properties
            this.Property(t => t.Year)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.MonthName)
                .HasMaxLength(50);

            this.Property(t => t.Disease)
                .HasMaxLength(50);

            this.Property(t => t.Species)
                .HasMaxLength(100);

            this.Property(t => t.Region)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            this.Property(t => t.Woreda)
                .HasMaxLength(100);

            this.Property(t => t.PublicbodyName)
                .HasMaxLength(100);

            this.Property(t => t.ReportMonth)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptVaccinationVsOutbreak");
            this.Property(t => t.Year).HasColumnName("Year");
            this.Property(t => t.MonthName).HasColumnName("MonthName");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.Species).HasColumnName("Species");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.Control).HasColumnName("Control");
            this.Property(t => t.Prophylaxis).HasColumnName("Prophylaxis");
            this.Property(t => t.PublicbodyName).HasColumnName("PublicbodyName");
            this.Property(t => t.NewOutbreak).HasColumnName("NewOutbreak");
            this.Property(t => t.ActiveOutbreak).HasColumnName("ActiveOutbreak");
            this.Property(t => t.NewCases).HasColumnName("NewCases");
            this.Property(t => t.Death).HasColumnName("Death");
            this.Property(t => t.Slaughtered).HasColumnName("Slaughtered");
            this.Property(t => t.AnimalAtRisk).HasColumnName("AnimalAtRisk");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
        }
    }
}
