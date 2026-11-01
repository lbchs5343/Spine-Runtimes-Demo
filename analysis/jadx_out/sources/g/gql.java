package g;

import j$.util.List;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes.dex */
public final class gql {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f18575a = dsr.k(gql.class);

    /* renamed from: b, reason: collision with root package name */
    public final axw f18576b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f18577c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f18578d;

    public gql(cvp cvpVar) {
        HashMap hashMap = new HashMap();
        this.f18577c = hashMap;
        this.f18578d = new HashMap();
        this.f18576b = cvpVar;
        i(h("/android/attrs.xml"));
        i(h("/android/attrs_manifest.xml"));
        f18575a.v(Integer.valueOf(hashMap.size()), "Loaded android attributes count: {}");
    }

    public final void e(NodeList nodeList) {
        gfq gfqVar;
        String str;
        Node namedItem;
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node item = nodeList.item(i);
            if (item.getNodeType() == 1 && item.hasAttributes() && item.hasChildNodes()) {
                NamedNodeMap attributes = item.getAttributes();
                int i2 = 0;
                while (true) {
                    gfqVar = null;
                    if (i2 >= attributes.getLength()) {
                        str = null;
                        break;
                    }
                    Node item2 = attributes.item(i2);
                    if (item2.getNodeName().equals(abn.EXTRA_UA_APP_NAME)) {
                        str = item2.getNodeValue();
                        break;
                    }
                    i2++;
                }
                if (str == null || !item.getNodeName().equals("attr")) {
                    e(item.getChildNodes());
                } else {
                    NodeList childNodes = item.getChildNodes();
                    for (int i3 = 0; i3 < childNodes.getLength(); i3++) {
                        Node item3 = childNodes.item(i3);
                        if (item3.getNodeType() == 1 && item3.hasAttributes()) {
                            if (gfqVar == null) {
                                if (item3.getNodeName().equals("enum")) {
                                    gfqVar = new gfq(euz.ENUM);
                                } else if (item3.getNodeName().equals("flag")) {
                                    gfqVar = new gfq(euz.FLAG);
                                }
                                if (gfqVar == null) {
                                    break;
                                } else {
                                    this.f18577c.put("android:".concat(str), gfqVar);
                                }
                            }
                            NamedNodeMap attributes2 = item3.getAttributes();
                            Node namedItem2 = attributes2.getNamedItem(abn.EXTRA_UA_APP_NAME);
                            if (namedItem2 != null && (namedItem = attributes2.getNamedItem("value")) != null) {
                                try {
                                    String nodeValue = namedItem.getNodeValue();
                                    gfqVar.f18042b.put(Long.valueOf(nodeValue.startsWith("0x") ? Long.parseLong(nodeValue.substring(2), 16) : Long.parseLong(nodeValue)), namedItem2.getNodeValue());
                                } catch (NumberFormatException e2) {
                                    f18575a.h("Failed parse manifest number", e2);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public final void f(cak cakVar) {
        euz euzVar;
        HashMap hashMap = this.f18578d;
        hashMap.clear();
        aew aewVar = (aew) cakVar;
        gyo gyoVar = aewVar.f10127f;
        bpo bpoVar = new bpo(aewVar.f10124c, gyoVar.g());
        Iterator it = gyoVar.f19010d.iterator();
        while (it.hasNext()) {
            azy azyVar = (azy) it.next();
            azyVar.getClass();
            if (azyVar.f11145g.equals("attr")) {
                if (azyVar.f11139a.size() > 1) {
                    int i = ((bbc) azyVar.f11139a.get(0)).f11214b.f10587c & 16711680;
                    if (i == 131072) {
                        euzVar = euz.FLAG;
                    } else if (i == 65536) {
                        euzVar = euz.ENUM;
                    }
                    gfq gfqVar = new gfq(euzVar);
                    for (int i2 = 1; i2 < azyVar.f11139a.size(); i2++) {
                        bbc bbcVar = (bbc) azyVar.f11139a.get(i2);
                        String d2 = bpoVar.d(bbcVar.f11213a);
                        long j = bbcVar.f11214b.f10587c;
                        if (d2.startsWith("id.")) {
                            d2 = d2.substring(3);
                        }
                        gfqVar.f18042b.put(Long.valueOf(j), d2);
                    }
                    hashMap.put(azyVar.f11140b, gfqVar);
                }
            }
        }
    }

    public final String g(long j, String str) {
        gfq gfqVar = (gfq) this.f18577c.get(str);
        if (gfqVar == null) {
            if (str.contains(":")) {
                str = str.split(":", 2)[1];
            }
            gfqVar = (gfq) this.f18578d.get(str);
            if (gfqVar == null) {
                return null;
            }
        }
        LinkedHashMap linkedHashMap = gfqVar.f18042b;
        euz euzVar = gfqVar.f18041a;
        if (euzVar == euz.ENUM) {
            return (String) linkedHashMap.get(Long.valueOf(j));
        }
        if (euzVar != euz.FLAG) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(linkedHashMap.keySet());
        List.b.sort(arrayList2, new fdq(2));
        Iterator it = arrayList2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Long l = (Long) it.next();
            String str2 = (String) linkedHashMap.get(l);
            if (j == l.longValue()) {
                arrayList.add(str2);
                break;
            }
            if (l.longValue() != 0 && (l.longValue() & j) == l.longValue()) {
                arrayList.add(str2);
                j ^= l.longValue();
            }
        }
        StringBuilder sb = new StringBuilder();
        Iterator it2 = arrayList.iterator();
        if (it2.hasNext()) {
            while (true) {
                sb.append((CharSequence) it2.next());
                if (!it2.hasNext()) {
                    break;
                }
                sb.append((CharSequence) "|");
            }
        }
        return sb.toString();
    }

    public final Document h(String str) {
        try {
            InputStream resourceAsStream = gql.class.getResourceAsStream(str);
            try {
                if (resourceAsStream == null) {
                    throw new gck(str.concat(" not found in classpath"));
                }
                try {
                    Document parse = (((cvp) this.f18576b).f13600b.contains(nd.SECURE_XML_PARSER) ? ecb.f15281a : han.f19139a).newDocumentBuilder().parse(resourceAsStream);
                    resourceAsStream.close();
                    return parse;
                } catch (Exception e2) {
                    throw new RuntimeException("Failed to parse xml", e2);
                }
            } finally {
            }
        } catch (Exception e3) {
            throw new gck("Xml load error, file: ".concat(str), e3);
        }
    }

    public final void i(Document document) {
        NodeList childNodes = document.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1 && item.hasChildNodes()) {
                e(item.getChildNodes());
            }
        }
    }
}
