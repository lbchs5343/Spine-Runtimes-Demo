package g;

import javax.xml.parsers.DocumentBuilderFactory;

/* loaded from: classes.dex */
public abstract class ecb {

    /* renamed from: a, reason: collision with root package name */
    public static final DocumentBuilderFactory f15281a;

    static {
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        try {
            newInstance.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
            newInstance.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
            newInstance.setFeature("http://xml.org/sax/features/external-general-entities", false);
            newInstance.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
            newInstance.setFeature("http://apache.org/xml/features/dom/create-entity-ref-nodes", false);
            newInstance.setXIncludeAware(false);
            newInstance.setExpandEntityReferences(false);
        } catch (Exception e2) {
            cvp.f13599a.p(e2.getMessage(), "Failed to build secure XML DocumentBuilderFactory: {}");
        }
        f15281a = newInstance;
    }
}
