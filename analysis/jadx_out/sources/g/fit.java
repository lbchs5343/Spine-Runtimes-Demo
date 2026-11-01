package g;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes3.dex */
public final class fit extends aiq {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16857b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ fit(bsz bszVar, int i) {
        super(bszVar);
        this.f16857b = i;
    }

    public static final void al(btw btwVar, String str, Long l) {
        List unmodifiableList = Collections.unmodifiableList(((kk) btwVar.k).q());
        int i = 0;
        while (true) {
            if (i >= unmodifiableList.size()) {
                i = -1;
                break;
            } else if (str.equals(((asm) unmodifiableList.get(i)).u())) {
                break;
            } else {
                i++;
            }
        }
        bd i2 = asm.i();
        i2.a(str);
        if (awf.n(l)) {
            i2.c(l.longValue());
        }
        if (i < 0) {
            btwVar.e(i2);
            return;
        }
        if (btwVar.i) {
            btwVar.p();
            btwVar.i = false;
        }
        kk.i((kk) btwVar.k, i, (asm) i2.o());
    }

    private final void az() {
    }

    private final void ba() {
    }

    private final void bb() {
    }

    public static final String c(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    public static ctf g(guq guqVar) {
        Object obj;
        Bundle u = u(guqVar.f18782c, true);
        String obj2 = (!u.containsKey("_o") || (obj = u.get("_o")) == null) ? "app" : obj.toString();
        String ai = cux.ai(guqVar.f18780a, dyd.i, dyd.q);
        if (ai == null) {
            ai = guqVar.f18780a;
        }
        return new ctf(ai, new cde(u), obj2, guqVar.f18781b);
    }

    public static final void h(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    public static crf j(crf crfVar, byte[] bArr) {
        le leVar;
        le leVar2 = le.f19584a;
        if (leVar2 == null) {
            synchronized (le.class) {
                try {
                    leVar = le.f19584a;
                    if (leVar == null) {
                        leVar = awx.c();
                        le.f19584a = leVar;
                    }
                } finally {
                }
            }
            leVar2 = leVar;
        }
        if (leVar2 != null) {
            crfVar.getClass();
            crfVar.m(bArr, bArr.length, leVar2);
            return crfVar;
        }
        crfVar.getClass();
        crfVar.m(bArr, bArr.length, le.f19585b);
        return crfVar;
    }

    public static boolean k(boh bohVar, int i) {
        if (i < ((ajv) bohVar).f10349b * 64) {
            return ((1 << (i % 64)) & ((Long) ((ajv) bohVar).get(i / 64)).longValue()) != 0;
        }
        return false;
    }

    public static final void o(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        h(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    public static final asm p(String str, kk kkVar) {
        for (asm asmVar : kkVar.q()) {
            if (asmVar.u().equals(str)) {
                return asmVar;
            }
        }
        return null;
    }

    public static int q(String str, epg epgVar) {
        for (int i = 0; i < ((fzb) epgVar.k).bs(); i++) {
            if (str.equals(((fzb) epgVar.k).dc(i).p())) {
                return i;
            }
        }
        return -1;
    }

    public static final void r(StringBuilder sb, int i, String str, cjx cjxVar) {
        if (cjxVar == null) {
            return;
        }
        h(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (cjxVar.j()) {
            int f2 = cjxVar.f();
            o(sb, i, "comparison_type", f2 != 1 ? f2 != 2 ? f2 != 3 ? f2 != 4 ? "BETWEEN" : "EQUAL" : "GREATER_THAN" : "LESS_THAN" : "UNKNOWN_COMPARISON_TYPE");
        }
        if (cjxVar.g()) {
            o(sb, i, "match_as_float", Boolean.valueOf(cjxVar.h()));
        }
        if (cjxVar.l()) {
            o(sb, i, "comparison_value", cjxVar.i());
        }
        if (cjxVar.e()) {
            o(sb, i, "min_comparison_value", cjxVar.c());
        }
        if (cjxVar.k()) {
            o(sb, i, "max_comparison_value", cjxVar.d());
        }
        h(sb, i);
        sb.append("}\n");
    }

    public static boolean s(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* JADX WARN: Type inference failed for: r6v9, types: [android.os.Bundle[], java.io.Serializable] */
    public static final Serializable t(String str, kk kkVar) {
        asm p = p(str, kkVar);
        if (p == null) {
            return null;
        }
        if (p.m()) {
            return p.x();
        }
        if (p.v()) {
            return Long.valueOf(p.n());
        }
        if (p.r()) {
            return Double.valueOf(p.q());
        }
        if (p.p() <= 0) {
            return null;
        }
        cwe<asm> s = p.s();
        ArrayList arrayList = new ArrayList();
        for (asm asmVar : s) {
            if (asmVar != null) {
                Bundle bundle = new Bundle();
                for (asm asmVar2 : asmVar.s()) {
                    if (asmVar2.m()) {
                        bundle.putString(asmVar2.u(), asmVar2.x());
                    } else if (asmVar2.v()) {
                        bundle.putLong(asmVar2.u(), asmVar2.n());
                    } else if (asmVar2.r()) {
                        bundle.putDouble(asmVar2.u(), asmVar2.q());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public static Bundle u(Map map, boolean z) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    arrayList2.add(u((Map) arrayList.get(i), false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    public static ArrayList v(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            long j = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i * 64) + i2;
                if (i3 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i3)) {
                    j |= 1 << i2;
                }
            }
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    public static final void w(StringBuilder sb, String str, gpz gpzVar) {
        if (gpzVar == null) {
            return;
        }
        h(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (gpzVar.v() != 0) {
            h(sb, 4);
            sb.append("results: ");
            int i = 0;
            for (Long l : gpzVar.q()) {
                int i2 = i + 1;
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i = i2;
            }
            sb.append('\n');
        }
        if (gpzVar.n() != 0) {
            h(sb, 4);
            sb.append("status: ");
            int i3 = 0;
            for (Long l2 : gpzVar.s()) {
                int i4 = i3 + 1;
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i3 = i4;
            }
            sb.append('\n');
        }
        if (gpzVar.p() != 0) {
            h(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i5 = 0;
            for (bvd bvdVar : gpzVar.w()) {
                int i6 = i5 + 1;
                if (i5 != 0) {
                    sb.append(", ");
                }
                sb.append(bvdVar.h() ? Integer.valueOf(bvdVar.e()) : null);
                sb.append(":");
                sb.append(bvdVar.g() ? Long.valueOf(bvdVar.f()) : null);
                i5 = i6;
            }
            sb.append("}\n");
        }
        if (gpzVar.o() != 0) {
            h(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i7 = 0;
            for (ezy ezyVar : gpzVar.r()) {
                int i8 = i7 + 1;
                if (i7 != 0) {
                    sb.append(", ");
                }
                sb.append(ezyVar.g() ? Integer.valueOf(ezyVar.i()) : null);
                sb.append(": [");
                Iterator it = ezyVar.h().iterator();
                int i9 = 0;
                while (it.hasNext()) {
                    long longValue = ((Long) it.next()).longValue();
                    int i10 = i9 + 1;
                    if (i9 != 0) {
                        sb.append(", ");
                    }
                    sb.append(longValue);
                    i9 = i10;
                }
                sb.append("]");
                i7 = i8;
            }
            sb.append("}\n");
        }
        h(sb, 3);
        sb.append("}\n");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        r5 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
    
        if (r4 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        r3 = (android.os.Parcelable[]) r3;
        r4 = r3.length;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
    
        if (r7 >= r4) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
    
        r8 = r3[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if ((r8 instanceof android.os.Bundle) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        r5.add(x((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0080, code lost:
    
        r0.put(r2, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
    
        if ((r3 instanceof java.util.ArrayList) == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0056, code lost:
    
        r3 = (java.util.ArrayList) r3;
        r4 = r3.size();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
    
        if (r7 >= r4) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
    
        r8 = r3.get(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0065, code lost:
    
        if ((r8 instanceof android.os.Bundle) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0067, code lost:
    
        r5.add(x((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0070, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0075, code lost:
    
        if ((r3 instanceof android.os.Bundle) == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0077, code lost:
    
        r5.add(x((android.os.Bundle) r3, false));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static HashMap x(Bundle bundle, boolean z) {
        HashMap hashMap = new HashMap();
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            Object obj = bundle.get(next);
            boolean z2 = obj instanceof Parcelable[];
            if (!z2 && !(obj instanceof ArrayList) && !(obj instanceof Bundle)) {
                if (obj != null) {
                    hashMap.put(next, obj);
                }
            }
        }
        return hashMap;
    }

    public List am(boh bohVar, List list) {
        int i;
        cyg cygVar = (cyg) this.z;
        ArrayList arrayList = new ArrayList(bohVar);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() < 0) {
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.f11520g.i(num, "Ignoring negative bit index to be cleared");
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    bgm bgmVar2 = cygVar.z;
                    cyg.ak(bgmVar2);
                    bgmVar2.f11520g.e(num, "Ignoring bit index greater than bitSet size", Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i2 = size2;
            i = size;
            size = i2;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i);
    }

    public void an(eft eftVar, Object obj) {
        ckd.k(obj);
        if (eftVar.i) {
            eftVar.p();
            eftVar.i = false;
        }
        ne.d((ne) eftVar.k);
        if (eftVar.i) {
            eftVar.p();
            eftVar.i = false;
        }
        ne.f((ne) eftVar.k);
        if (eftVar.i) {
            eftVar.p();
            eftVar.i = false;
        }
        ne.c((ne) eftVar.k);
        if (obj instanceof String) {
            String str = (String) obj;
            if (eftVar.i) {
                eftVar.p();
                eftVar.i = false;
            }
            ne.h((ne) eftVar.k, str);
            return;
        }
        if (obj instanceof Long) {
            eftVar.c(((Long) obj).longValue());
            return;
        }
        if (!(obj instanceof Double)) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.i(obj, "Ignoring invalid (type) user attribute value");
        } else {
            double doubleValue = ((Double) obj).doubleValue();
            if (eftVar.i) {
                eftVar.p();
                eftVar.i = false;
            }
            ne.i((ne) eftVar.k, doubleValue);
        }
    }

    public kk ao(fmv fmvVar) {
        Bundle bundle;
        btw g2 = kk.g();
        long j = fmvVar.f17048b;
        if (g2.i) {
            g2.p();
            g2.i = false;
        }
        kk.h(j, (kk) g2.k);
        cde cdeVar = fmvVar.f17050d;
        bundle = cdeVar.zza;
        for (String str : bundle.keySet()) {
            bd i = asm.i();
            i.a(str);
            Object zzf = cdeVar.zzf(str);
            ckd.k(zzf);
            at(i, zzf);
            g2.e(i);
        }
        return (kk) g2.o();
    }

    public Parcelable ap(byte[] bArr, Parcelable.Creator creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            obtain.unmarshall(bArr, 0, bArr.length);
            obtain.setDataPosition(0);
            return (Parcelable) creator.createFromParcel(obtain);
        } catch (csj unused) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.h("Failed to load parcelable from buffer");
            return null;
        } finally {
            obtain.recycle();
        }
    }

    public boolean aq(long j, long j2) {
        if (j == 0 || j2 <= 0) {
            return true;
        }
        ((cyg) this.z).f13743ab.getClass();
        return Math.abs(System.currentTimeMillis() - j) > j2;
    }

    public void ar(StringBuilder sb, int i, cwe cweVar) {
        if (cweVar == null) {
            return;
        }
        int i2 = i + 1;
        Iterator it = cweVar.iterator();
        while (it.hasNext()) {
            asm asmVar = (asm) it.next();
            if (asmVar != null) {
                h(sb, i2);
                sb.append("param {\n");
                o(sb, i2, abn.EXTRA_UA_APP_NAME, asmVar.o() ? ((cyg) this.z).af.g(asmVar.u()) : null);
                o(sb, i2, "string_value", asmVar.m() ? asmVar.x() : null);
                o(sb, i2, "int_value", asmVar.v() ? Long.valueOf(asmVar.n()) : null);
                o(sb, i2, "double_value", asmVar.r() ? Double.valueOf(asmVar.q()) : null);
                if (asmVar.p() > 0) {
                    ar(sb, i2, asmVar.s());
                }
                h(sb, i2);
                sb.append("}\n");
            }
        }
    }

    public String as(dfx dfxVar) {
        StringBuilder o = awf.o("\nproperty_filter {\n");
        if (dfxVar.j()) {
            o(o, 0, "filter_id", Integer.valueOf(dfxVar.e()));
        }
        o(o, 0, "property_name", ((cyg) this.z).af.i(dfxVar.d()));
        String c2 = c(dfxVar.i(), dfxVar.k(), dfxVar.g());
        if (!c2.isEmpty()) {
            o(o, 0, "filter_type", c2);
        }
        ax(o, 1, dfxVar.h());
        o.append("}\n");
        return o.toString();
    }

    public void at(bd bdVar, Object obj) {
        if (bdVar.i) {
            bdVar.p();
            bdVar.i = false;
        }
        asm.g((asm) bdVar.k);
        if (bdVar.i) {
            bdVar.p();
            bdVar.i = false;
        }
        asm.l((asm) bdVar.k);
        if (bdVar.i) {
            bdVar.p();
            bdVar.i = false;
        }
        asm.b((asm) bdVar.k);
        if (bdVar.i) {
            bdVar.p();
            bdVar.i = false;
        }
        asm.f((asm) bdVar.k);
        if (obj instanceof String) {
            bdVar.b((String) obj);
            return;
        }
        if (obj instanceof Long) {
            bdVar.c(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            if (bdVar.i) {
                bdVar.p();
                bdVar.i = false;
            }
            asm.c((asm) bdVar.k, doubleValue);
            return;
        }
        if (!(obj instanceof Bundle[])) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.i(obj, "Ignoring invalid (type) event param value");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : (Bundle[]) obj) {
            if (bundle != null) {
                bd i = asm.i();
                for (String str : bundle.keySet()) {
                    bd i2 = asm.i();
                    i2.a(str);
                    Object obj2 = bundle.get(str);
                    if (obj2 instanceof Long) {
                        i2.c(((Long) obj2).longValue());
                    } else if (obj2 instanceof String) {
                        i2.b((String) obj2);
                    } else if (obj2 instanceof Double) {
                        double doubleValue2 = ((Double) obj2).doubleValue();
                        if (i2.i) {
                            i2.p();
                            i2.i = false;
                        }
                        asm.c((asm) i2.k, doubleValue2);
                    }
                    if (i.i) {
                        i.p();
                        i.i = false;
                    }
                    asm.j((asm) i.k, (asm) i2.o());
                }
                if (((asm) i.k).p() > 0) {
                    arrayList.add((asm) i.o());
                }
            }
        }
        if (bdVar.i) {
            bdVar.p();
            bdVar.i = false;
        }
        asm.d((asm) bdVar.k, arrayList);
    }

    public String au(flt fltVar) {
        cyg cygVar = (cyg) this.z;
        StringBuilder o = awf.o("\nbatch {\n");
        for (fzb fzbVar : fltVar.d()) {
            if (fzbVar != null) {
                h(o, 1);
                o.append("bundle {\n");
                if (fzbVar.cp()) {
                    o(o, 1, "protocol_version", Integer.valueOf(fzbVar.dp()));
                }
                eur.c();
                dsd dsdVar = cygVar.f13747e;
                ebl eblVar = cygVar.af;
                if (dsdVar.g(null, gad.o) && fzbVar.cr()) {
                    o(o, 1, "session_stitching_token", fzbVar.cn());
                }
                o(o, 1, "platform", fzbVar.dn());
                if (fzbVar.cl()) {
                    o(o, 1, "gmp_version", Long.valueOf(fzbVar.cu()));
                }
                if (fzbVar.by()) {
                    o(o, 1, "uploading_gmp_version", Long.valueOf(fzbVar.cc()));
                }
                if (fzbVar.cz()) {
                    o(o, 1, "dynamite_version", Long.valueOf(fzbVar.db()));
                }
                if (fzbVar.bx()) {
                    o(o, 1, "config_version", Long.valueOf(fzbVar.bw()));
                }
                o(o, 1, "gmp_app_id", fzbVar.dk());
                o(o, 1, "admob_app_id", fzbVar.dm());
                o(o, 1, PluginConstants.KEY_APP_ID, fzbVar.ch());
                o(o, 1, "app_version", fzbVar.ci());
                if (fzbVar.dq()) {
                    o(o, 1, "app_version_major", Integer.valueOf(fzbVar.cm()));
                }
                o(o, 1, "firebase_instance_id", fzbVar.cy());
                if (fzbVar.dd()) {
                    o(o, 1, "dev_cert_hash", Long.valueOf(fzbVar.cv()));
                }
                o(o, 1, "app_store", fzbVar.cj());
                if (fzbVar.dt()) {
                    o(o, 1, "upload_timestamp_millis", Long.valueOf(fzbVar.bv()));
                }
                if (fzbVar.m13do()) {
                    o(o, 1, "start_timestamp_millis", Long.valueOf(fzbVar.dz()));
                }
                if (fzbVar.de()) {
                    o(o, 1, "end_timestamp_millis", Long.valueOf(fzbVar.dy()));
                }
                if (fzbVar.dj()) {
                    o(o, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(fzbVar.ds()));
                }
                if (fzbVar.co()) {
                    o(o, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(fzbVar.dv()));
                }
                o(o, 1, "app_instance_id", fzbVar.dg());
                o(o, 1, "resettable_device_id", fzbVar.ck());
                o(o, 1, "ds_id", fzbVar.cb());
                if (fzbVar.dw()) {
                    o(o, 1, "limited_ad_tracking", Boolean.valueOf(fzbVar.bz()));
                }
                o(o, 1, "os_version", fzbVar.cx());
                o(o, 1, "device_model", fzbVar.cf());
                o(o, 1, "user_default_language", fzbVar.cq());
                if (fzbVar.cg()) {
                    o(o, 1, "time_zone_offset_minutes", Integer.valueOf(fzbVar.dl()));
                }
                if (fzbVar.ct()) {
                    o(o, 1, "bundle_sequential_index", Integer.valueOf(fzbVar.br()));
                }
                if (fzbVar.dr()) {
                    o(o, 1, "service_upload", Boolean.valueOf(fzbVar.bu()));
                }
                o(o, 1, "health_monitor", fzbVar.dx());
                if (fzbVar.di()) {
                    o(o, 1, "retry_counter", Integer.valueOf(fzbVar.dh()));
                }
                if (fzbVar.ca()) {
                    o(o, 1, "consent_signals", fzbVar.da());
                }
                cwe<ne> bt = fzbVar.bt();
                if (bt != null) {
                    for (ne neVar : bt) {
                        if (neVar != null) {
                            h(o, 2);
                            o.append("user_property {\n");
                            o(o, 2, "set_timestamp_millis", neVar.m() ? Long.valueOf(neVar.l()) : null);
                            o(o, 2, abn.EXTRA_UA_APP_NAME, eblVar.i(neVar.p()));
                            o(o, 2, "string_value", neVar.r());
                            o(o, 2, "int_value", neVar.s() ? Long.valueOf(neVar.q()) : null);
                            o(o, 2, "double_value", neVar.k() ? Double.valueOf(neVar.n()) : null);
                            h(o, 2);
                            o.append("}\n");
                        }
                    }
                }
                cwe<ajk> du = fzbVar.du();
                if (du != null) {
                    for (ajk ajkVar : du) {
                        if (ajkVar != null) {
                            h(o, 2);
                            o.append("audience_membership {\n");
                            if (ajkVar.j()) {
                                o(o, 2, "audience_id", Integer.valueOf(ajkVar.i()));
                            }
                            if (ajkVar.k()) {
                                o(o, 2, "new_audience", Boolean.valueOf(ajkVar.m()));
                            }
                            w(o, "current_data", ajkVar.h());
                            if (ajkVar.l()) {
                                w(o, "previous_data", ajkVar.g());
                            }
                            h(o, 2);
                            o.append("}\n");
                        }
                    }
                }
                cwe<kk> cd = fzbVar.cd();
                if (cd != null) {
                    for (kk kkVar : cd) {
                        if (kkVar != null) {
                            h(o, 2);
                            o.append("event {\n");
                            o(o, 2, abn.EXTRA_UA_APP_NAME, eblVar.f(kkVar.u()));
                            if (kkVar.o()) {
                                o(o, 2, "timestamp_millis", Long.valueOf(kkVar.k()));
                            }
                            if (kkVar.p()) {
                                o(o, 2, "previous_timestamp_millis", Long.valueOf(kkVar.l()));
                            }
                            if (kkVar.m()) {
                                o(o, 2, "count", Integer.valueOf(kkVar.n()));
                            }
                            if (kkVar.r() != 0) {
                                ar(o, 2, kkVar.q());
                            }
                            h(o, 2);
                            o.append("}\n");
                        }
                    }
                }
                h(o, 1);
                o.append("}\n");
            }
        }
        o.append("}\n");
        return o.toString();
    }

    public long av(byte[] bArr) {
        cyg cygVar = (cyg) this.z;
        dkq dkqVar = cygVar.m;
        cyg.ai(dkqVar);
        dkqVar._e();
        MessageDigest ap = dkq.ap();
        if (ap != null) {
            return dkq.u(ap.digest(bArr));
        }
        bgm bgmVar = cygVar.z;
        cyg.ak(bgmVar);
        bgmVar.f11518b.h("Failed to get MD5");
        return 0L;
    }

    public boolean aw() {
        n();
        ConnectivityManager connectivityManager = (ConnectivityManager) ((cyg) this.z).v.getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    public void ax(StringBuilder sb, int i, cth cthVar) {
        String str;
        if (cthVar == null) {
            return;
        }
        h(sb, i);
        sb.append("filter {\n");
        if (cthVar.k()) {
            o(sb, i, "complement", Boolean.valueOf(cthVar.i()));
        }
        if (cthVar.j()) {
            o(sb, i, "param_name", ((cyg) this.z).af.g(cthVar.d()));
        }
        if (cthVar.f()) {
            int i2 = i + 1;
            fuj e2 = cthVar.e();
            if (e2 != null) {
                h(sb, i2);
                sb.append("string_filter {\n");
                if (e2.f()) {
                    switch (e2.i()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    o(sb, i2, "match_type", str);
                }
                if (e2.j()) {
                    o(sb, i2, "expression", e2.d());
                }
                if (e2.h()) {
                    o(sb, i2, "case_sensitive", Boolean.valueOf(e2.g()));
                }
                if (e2.e() > 0) {
                    h(sb, i + 2);
                    sb.append("expression_list {\n");
                    for (String str2 : e2.c()) {
                        h(sb, i + 3);
                        sb.append(str2);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                h(sb, i2);
                sb.append("}\n");
            }
        }
        if (cthVar.g()) {
            r(sb, i + 1, "number_filter", cthVar.h());
        }
        h(sb, i);
        sb.append("}\n");
    }

    public byte[] ay(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.i(e2, "Failed to gzip content");
            throw e2;
        }
    }

    @Override // g.aiq
    public final void i() {
        int i = this.f16857b;
    }
}
