using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptdobyRegionMap : EntityTypeConfiguration<rptdobyRegion>
    {
        public rptdobyRegionMap()
        {
            // Primary Key
            this.HasKey(t => t.OutbreakStatusId);

            // Properties
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

            this.Property(t => t.PublicbodyName)
                .HasMaxLength(100);

            this.Property(t => t.OutbreakStatusId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptdobyRegion");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Year).HasColumnName("Year");
            this.Property(t => t.Month).HasColumnName("Month");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.NewOutbreak).HasColumnName("NewOutbreak");
            this.Property(t => t.ActiveOutbreak).HasColumnName("ActiveOutbreak");
            this.Property(t => t.Species).HasColumnName("Species");
            this.Property(t => t.Case).HasColumnName("Case");
            this.Property(t => t.Death).HasColumnName("Death");
            this.Property(t => t.Slaughtered).HasColumnName("Slaughtered");
            this.Property(t => t.AnimalAtRisk).HasColumnName("AnimalAtRisk");
            this.Property(t => t.Control).HasColumnName("Control");
            this.Property(t => t.Prophylaxis).HasColumnName("Prophylaxis");
            this.Property(t => t.LocationId).HasColumnName("LocationId");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
            this.Property(t => t.PublicBodyId).HasColumnName("PublicBodyId");
            this.Property(t => t.PublicbodyName).HasColumnName("PublicbodyName");
            this.Property(t => t.TotalCases).HasColumnName("TotalCases");
            this.Property(t => t.TotalDeaths).HasColumnName("TotalDeaths");
            this.Property(t => t.TotalSlaughtered).HasColumnName("TotalSlaughtered");
            this.Property(t => t.OutbreakStatusId).HasColumnName("OutbreakStatusId");
        }
    }
}
