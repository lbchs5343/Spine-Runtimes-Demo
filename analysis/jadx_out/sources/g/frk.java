package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.Objects;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class frk {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f17292a;

    public frk(int i) {
        switch (i) {
            case 1:
                this.f17292a = new LinkedHashMap();
                break;
            default:
                this.f17292a = new LinkedHashMap();
                break;
        }
    }

    public aci b(gxm gxmVar) {
        LinkedHashMap linkedHashMap = this.f17292a;
        Object obj = linkedHashMap.get(gxmVar);
        if (obj == null) {
            obj = new aci(gxmVar);
            linkedHashMap.put(gxmVar, obj);
        }
        return (aci) obj;
    }

    public void c(hbi... hbiVarArr) {
        bff.p(hbiVarArr, "migrations");
        for (hbi hbiVar : hbiVarArr) {
            int i = hbiVar.f19169d;
            int i2 = hbiVar.f19170e;
            Integer valueOf = Integer.valueOf(i);
            LinkedHashMap linkedHashMap = this.f17292a;
            Object obj = linkedHashMap.get(valueOf);
            if (obj == null) {
                obj = new TreeMap();
                linkedHashMap.put(valueOf, obj);
            }
            TreeMap treeMap = (TreeMap) obj;
            if (treeMap.containsKey(Integer.valueOf(i2))) {
                Objects.toString(treeMap.get(Integer.valueOf(i2)));
                hbiVar.toString();
            }
            treeMap.put(Integer.valueOf(i2), hbiVar);
        }
    }

    public List d(String str) {
        bff.p(str, "workSpecId");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = this.f17292a;
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            if (bff.n(((gxm) entry.getKey()).f18956a, str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap.keySet().iterator();
        while (it.hasNext()) {
            linkedHashMap2.remove((gxm) it.next());
        }
        return gsv.bf(linkedHashMap.values());
    }

    public aci e(gxm gxmVar) {
        bff.p(gxmVar, TTDownloadField.TT_ID);
        return (aci) this.f17292a.remove(gxmVar);
    }
}
