using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptWeredaVaccinationCarriedOutMap : EntityTypeConfiguration<rptWeredaVaccinationCarriedOut>
    {
        public rptWeredaVaccinationCarriedOutMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Woreda, t.LocationName, t.Id });

            // Properties
            this.Property(t => t.Woreda)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.LocationName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("rptWeredaVaccinationCarriedOut");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.Control).HasColumnName("Control");
            this.Property(t => t.Prophylaxis).HasColumnName("Prophylaxis");
            this.Property(t => t.LocationName).HasColumnName("LocationName");
            this.Property(t => t.Id).HasColumnName("Id");
        }
    }
}
