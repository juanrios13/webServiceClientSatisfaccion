
package formulario;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para read complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="read"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="radicado" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "read", propOrder = {
    "radicado"
})
public class Read {

    protected String radicado;

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

}
