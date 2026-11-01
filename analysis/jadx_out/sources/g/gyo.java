package g;

import j$.util.Comparator;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class gyo {

    /* renamed from: a, reason: collision with root package name */
    public static final Comparator f19007a = Comparator.b.thenComparing(Comparator.b.thenComparing(Comparator.a.comparing(new gpn(23)), new gpn(24)), new gpn(25));

    /* renamed from: e, reason: collision with root package name */
    public final axw f19011e;

    /* renamed from: f, reason: collision with root package name */
    public String f19012f;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f19010d = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final TreeMap f19008b = new TreeMap(f19007a);

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f19009c = new HashMap();

    public gyo(cvp cvpVar) {
        this.f19011e = cvpVar;
    }

    public final HashMap g() {
        HashMap hashMap = new HashMap();
        Iterator it = this.f19010d.iterator();
        while (it.hasNext()) {
            azy azyVar = (azy) it.next();
            hashMap.put(Integer.valueOf(azyVar.f11142d), azyVar.f11145g + '/' + azyVar.f11140b);
        }
        return hashMap;
    }
}
