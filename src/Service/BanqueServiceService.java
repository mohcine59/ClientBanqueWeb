/**
 * BanqueServiceService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package Service;

public interface BanqueServiceService extends javax.xml.rpc.Service {
    public java.lang.String getBanqueWSPortAddress();

    public Service.BanqueWS getBanqueWSPort() throws javax.xml.rpc.ServiceException;

    public Service.BanqueWS getBanqueWSPort(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
