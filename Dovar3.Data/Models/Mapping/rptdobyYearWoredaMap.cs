using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptdobyYearWoredaMap : EntityTypeConfiguration<rptdobyYearWoreda>
    {
        public rptdobyYearWoredaMap()
        {
            // Primary Key
            this.HasKey(t => new { t.ReportYear, t.Woreda, t.Disease, t.Species, t.Id, t.Region, t.LocationName });

            // Properties
            this.Property(t => t.ReportYear)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Woreda)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Disease)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Species)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Region)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.LocationName)
                .IsRequired()
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("rptdobyYearWoreda");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.NewOutbreak).HasColumnName("NewOutbreak");
            this.Property(t => t.ActiveOutbreak).HasColumnName("ActiveOutbreak");
            this.Property(t => t.Disease).HasColumnName("Disease");
            this.Property(t => t.Species).HasColumnName("Species");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.LocationName).HasColumnName("LocationName");
        }
    }
}
