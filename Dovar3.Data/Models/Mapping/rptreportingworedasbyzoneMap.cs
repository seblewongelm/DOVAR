using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptreportingworedasbyzoneMap : EntityTypeConfiguration<rptreportingworedasbyzone>
    {
        public rptreportingworedasbyzoneMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Woreda, t.Zone, t.WoredaName, t.ZoneName, t.Id });

            // Properties
            this.Property(t => t.Woreda)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Zone)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.WoredaName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.ZoneName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptreportingworedasbyzone");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.WoredaName).HasColumnName("WoredaName");
            this.Property(t => t.ZoneName).HasColumnName("ZoneName");
            this.Property(t => t.Id).HasColumnName("Id");
        }
    }
}
