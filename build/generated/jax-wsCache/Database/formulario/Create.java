
package formulario;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para create complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="create"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="radicado" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="lvlSatisfaccion" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="repServicio" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "create", propOrder = {
    "radicado",
    "lvlSatisfaccion",
    "repServicio"
})
public class Create {

    protected String radicado;
    protected String lvlSatisfaccion;
    protected String repServicio;

    /**
     * Obtiene el valor de la propiedad radicado.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRadicado() {
        return radicado;
    }

    /**
     * Define el valor de la propiedad radicado.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRadicado(String value) {
        this.radicado = value;
    }

    /**
     * Obtiene el valor de la propiedad lvlSatisfaccion.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLvlSatisfaccion() {
        return lvlSatisfaccion;
    }

    /**
     * Define el valor de la propiedad lvlSatisfaccion.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLvlSatisfaccion(String value) {
        this.lvlSatisfaccion = value;
    }

    /**
     * Obtiene el valor de la propiedad repServicio.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRepServicio() {
        return repServicio;
    }

    /**
     * Define el valor de la propiedad repServicio.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRepServicio(String value) {
        this.repServicio = value;
    }

}
