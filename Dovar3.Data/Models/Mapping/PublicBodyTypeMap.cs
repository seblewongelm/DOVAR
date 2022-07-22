using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class PublicBodyTypeMap : EntityTypeConfiguration<PublicBodyType>
    {
        public PublicBodyTypeMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.PublicBodyTypeName)
                .IsRequired()
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("PublicBodyType");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.PublicBodyTypeName).HasColumnName("PublicBodyTypeName");
        }
    }
}
