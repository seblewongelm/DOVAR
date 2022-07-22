using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class ETH_adm3Map : EntityTypeConfiguration<ETH_adm3>
    {
        public ETH_adm3Map()
        {
            // Primary Key
            this.HasKey(t => t.ID_W);

            // Properties
            this.Property(t => t.ISO)
                .HasMaxLength(3);

            this.Property(t => t.Country)
                .HasMaxLength(75);

            this.Property(t => t.Region)
                .HasMaxLength(75);

            this.Property(t => t.Zone)
                .HasMaxLength(75);

            this.Property(t => t.ID_W)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Woreda)
                .HasMaxLength(75);

            this.Property(t => t.TYPE_3)
                .HasMaxLength(50);

            this.Property(t => t.ENGTYPE_3)
                .HasMaxLength(50);

            this.Property(t => t.NL_NAME_3)
                .HasMaxLength(75);

            this.Property(t => t.VARNAME_3)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("ETH_adm3");
            this.Property(t => t.DetailOutbreakId).HasColumnName("DetailOutbreakId");
            this.Property(t => t.ID_C).HasColumnName("ID_C");
            this.Property(t => t.ISO).HasColumnName("ISO");
            this.Property(t => t.Country).HasColumnName("Country");
            this.Property(t => t.ID_R).HasColumnName("ID_R");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.ID_Z).HasColumnName("ID_Z");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.ID_W).HasColumnName("ID_W");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.TYPE_3).HasColumnName("TYPE_3");
            this.Property(t => t.ENGTYPE_3).HasColumnName("ENGTYPE_3");
            this.Property(t => t.NL_NAME_3).HasColumnName("NL_NAME_3");
            this.Property(t => t.VARNAME_3).HasColumnName("VARNAME_3");
            this.Property(t => t.GEOM).HasColumnName("GEOM");

            // Relationships
            this.HasOptional(t => t.MonthlyReport)
                .WithMany(t => t.ETH_adm3)
                .HasForeignKey(d => d.DetailOutbreakId);

        }
    }
}
