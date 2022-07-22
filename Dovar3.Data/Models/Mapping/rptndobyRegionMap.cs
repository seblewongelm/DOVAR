using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptndobyRegionMap : EntityTypeConfiguration<rptndobyRegion>
    {
        public rptndobyRegionMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Region, t.Disease, t.Species, t.Id, t.LocationName, t.ReportMonth });

            // Properties
            this.Property(t => t.Region)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Disease)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Species)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.LocationName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.ReportMonth)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptndobyRegion");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.NewOutbreak).HasColumnName("NewOutbreak");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.Species).HasColumnName("Species");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.LocationName).HasColumnName("LocationName");
            this.Property(t => t.ActiveOutbreak).HasColumnName("ActiveOutbreak");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
        }
    }
}
