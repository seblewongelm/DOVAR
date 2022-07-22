using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class TypeOfFarmingMap : EntityTypeConfiguration<TypeOfFarming>
    {
        public TypeOfFarmingMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.FarmingSystem)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("TypeOfFarming");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.FarmingSystem).HasColumnName("FarmingSystem");
        }
    }
}
