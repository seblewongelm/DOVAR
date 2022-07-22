using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptNofoOutbreakByRegionAndDiseaseMap : EntityTypeConfiguration<rptNofoOutbreakByRegionAndDisease>
    {
        public rptNofoOutbreakByRegionAndDiseaseMap()
        {
            // Primary Key
            this.HasKey(t => new { t.NoofOutbreak, t.Month, t.Region, t.Disease });

            // Properties
            this.Property(t => t.NoofOutbreak)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Month)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Region)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Disease)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.RVL)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            this.Property(t => t.Woreda)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("rptNofoOutbreakByRegionAndDisease");
            this.Property(t => t.NoofOutbreak).HasColumnName("NoofOutbreak");
            this.Property(t => t.Month).HasColumnName("Month");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.RVL).HasColumnName("RVL");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
        }
    }
}
