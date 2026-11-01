package g;

import android.content.Context;
import android.os.Bundle;
import android.util.JsonReader;
import android.util.JsonToken;
import cn.trinea.android.developertools.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class acq implements eya, fky, ctk, cce, aii, kq, gtx {
    public static final acq aa;

    /* renamed from: ab, reason: collision with root package name */
    public static final acq f9982ab;
    public static final acq ad;
    public static final acq ae;
    public static final acq af;
    public static final acq aj;
    public static final acq al;
    public static final acq am;
    public static final acq ap;
    public static final acq at;
    public static final acq av;
    public static final acq ax;
    public static final acq ay;
    public static final acq az;
    public static final acq bc;
    public static final acq be;
    public static final acq bh;
    public static final acq bi;
    public static final acq bj;
    public static final acq bk;
    public static final acq bn;

    /* renamed from: d, reason: collision with root package name */
    public static final acq f9984d;

    /* renamed from: g, reason: collision with root package name */
    public static final acq f9987g;
    public static final acq h;
    public static final acq j;
    public static final acq k;
    public static final acq l;
    public static final acq m;
    public static final acq o;
    public static final acq p;
    public static final acq q;
    public static final acq r;
    public static final acq s;
    public static final acq t;
    public static final acq u;
    public static final acq w;
    public static final acq x;
    public static final acq y;
    public static final acq z;
    public final /* synthetic */ int bp;
    public static final acq aw = new acq(0);

    /* renamed from: f, reason: collision with root package name */
    public static final acq f9986f = new acq(2);

    /* renamed from: e, reason: collision with root package name */
    public static final acq f9985e = new acq(3);
    public static final acq bd = new acq(4);
    public static final acq ai = new acq(5);
    public static final acq bf = new acq(6);
    public static final acq i = new acq(7);
    public static final /* synthetic */ acq ar = new acq(8);
    public static final /* synthetic */ acq n = new acq(9);
    public static final /* synthetic */ acq au = new acq(10);
    public static final /* synthetic */ acq bg = new acq(11);

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ acq f9983b = new acq(12);
    public static final /* synthetic */ acq bb = new acq(13);
    public static final /* synthetic */ acq ac = new acq(14);
    public static final /* synthetic */ acq bl = new acq(15);
    public static final /* synthetic */ acq bo = new acq(16);
    public static final /* synthetic */ acq as = new acq(17);
    public static final /* synthetic */ acq bm = new acq(18);
    public static final /* synthetic */ acq ah = new acq(19);
    public static final /* synthetic */ acq ba = new acq(20);
    public static final /* synthetic */ acq ag = new acq(21);
    public static final /* synthetic */ acq v = new acq(22);
    public static final acq aq = new acq(23);

    static {
        int i2 = 1;
        u = new acq(i2);
        ad = new acq(i2);
        af = new acq(i2);
        bk = new acq(i2);
        k = new acq(i2);
        f9984d = new acq(i2);
        av = new acq(i2);
        r = new acq(i2);
        y = new acq(i2);
        w = new acq(i2);
        bj = new acq(i2);
        ax = new acq(i2);
        o = new acq(i2);
        f9987g = new acq(i2);
        bi = new acq(i2);
        aj = new acq(i2);
        f9982ab = new acq(i2);
        h = new acq(i2);
        z = new acq(i2);
        m = new acq(i2);
        ay = new acq(i2);
        ap = new acq(i2);
        l = new acq(i2);
        am = new acq(i2);
        bc = new acq(i2);
        at = new acq(i2);
        t = new acq(i2);
        q = new acq(i2);
        ae = new acq(i2);
        aa = new acq(i2);
        bn = new acq(i2);
        bh = new acq(i2);
        al = new acq(i2);
        x = new acq(i2);
        p = new acq(i2);
        j = new acq(i2);
        az = new acq(i2);
        be = new acq(i2);
        s = new acq(i2);
    }

    public /* synthetic */ acq(int i2) {
        this.bp = i2;
    }

    public acq(ArrayList arrayList) {
        this.bp = 27;
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("Conditions list can't be empty");
        }
    }

    public static boolean bq(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    public static void br(Context context, String str, Bundle bundle) {
        boolean o2 = atf.g(context).o();
        if ((context.getResources().getInteger(R.integer.cchannel) == 2 || context.getResources().getInteger(R.integer.cchannel) == 3) && byh.aw(context, o2)) {
            return;
        }
        if (eg.f15468c == null) {
            synchronized (eg.class) {
                if (eg.f15468c == null) {
                    try {
                        eg.f15468c = FirebaseAnalytics.getInstance(fgj.d(context));
                    } catch (Exception e2) {
                        erl.ac(e2);
                    }
                }
            }
        }
        bhz bhzVar = eg.f15468c.f9103b;
        bhzVar.getClass();
        bhzVar.l(new sp(bhzVar, (String) null, str, bundle, false));
    }

    public static final enb bs(enb enbVar) {
        if ((enbVar != null ? enbVar.f15835b : null) == null) {
            return enbVar;
        }
        hdt q2 = enbVar.q();
        q2.m = null;
        return q2.o();
    }

    @Override // g.kq
    public hcu a(Class cls) {
        if (!fsu.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (hcu) fsu.o(cls.asSubclass(fsu.class)).i(3);
        } catch (Exception e2) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e2);
        }
    }

    @Override // g.eya
    public Object ak(Object obj) {
        switch (this.bp) {
            case 0:
                return obj.toString();
            default:
                ((ehi) obj).close();
                return dgi.f14134a;
        }
    }

    @Override // g.cce
    public Object an(JsonReader jsonReader, float f2) {
        switch (this.bp) {
            case 6:
                return cux.af(jsonReader, f2);
            default:
                boolean z2 = jsonReader.peek() == JsonToken.BEGIN_ARRAY;
                if (z2) {
                    jsonReader.beginArray();
                }
                float nextDouble = (float) jsonReader.nextDouble();
                float nextDouble2 = (float) jsonReader.nextDouble();
                while (jsonReader.hasNext()) {
                    jsonReader.skipValue();
                }
                if (z2) {
                    jsonReader.endArray();
                }
                return new aof((nextDouble / 100.0f) * f2, (nextDouble2 / 100.0f) * f2);
        }
    }

    @Override // g.gtx
    public Object ao() {
        switch (this.bp) {
            case 28:
                return new LinkedHashSet();
            default:
                return new TreeMap();
        }
    }

    @Override // g.ctk
    public boolean bt(String str) {
        return true;
    }

    @Override // g.ctk
    public boolean bu(File file, File file2) {
        return true;
    }

    @Override // g.ctk
    public boolean bv(ffs ffsVar) {
        return true;
    }

    @Override // g.ctk
    public boolean bw() {
        return false;
    }

    @Override // g.ctk
    public int bx() {
        return -1;
    }

    @Override // g.kq
    public boolean c(Class cls) {
        return fsu.class.isAssignableFrom(cls);
    }

    @Override // g.aii
    public Object zza() {
        switch (this.bp) {
            case 8:
                List list = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l2 = (Long) biy.h.k();
                l2.getClass();
                return l2;
            case 9:
                List list2 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l3 = (Long) biy.aa.k();
                l3.getClass();
                return l3;
            case 10:
                List list3 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.f11678g.k()).longValue());
            case 11:
                List list4 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l4 = (Long) biy.v.k();
                l4.getClass();
                return l4;
            case 12:
                List list5 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.f11671a.k()).longValue());
            case 13:
                List list6 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return (String) biy.l.k();
            case 14:
                List list7 = gad.z;
                ((bgt) ((fvz) fdd.f16593a.f16594b.zza())).getClass();
                Boolean bool = (Boolean) bgt.f11543c.k();
                bool.getClass();
                return bool;
            case 15:
                List list8 = gad.z;
                ((dvc) ((dzb) axm.f11029a.f11030b.zza())).getClass();
                Boolean bool2 = (Boolean) dvc.f14883a.k();
                bool2.getClass();
                return bool2;
            case 16:
                List list9 = gad.z;
                ((bvt) ((gun) eet.f15406a.f15407b.zza())).getClass();
                Boolean bool3 = (Boolean) bvt.f12287a.k();
                bool3.getClass();
                return bool3;
            case 17:
                List list10 = gad.z;
                ((aie) ((hdr) eaj.f15185a.f15186b.zza())).getClass();
                Boolean bool4 = (Boolean) aie.f10256a.k();
                bool4.getClass();
                return bool4;
            case 18:
                List list11 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool5 = (Boolean) hcx.f19243e.k();
                bool5.getClass();
                return bool5;
            case 19:
                List list12 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool6 = (Boolean) hcx.f19239a.k();
                bool6.getClass();
                return bool6;
            case 20:
                List list13 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool7 = (Boolean) hcx.h.k();
                bool7.getClass();
                return bool7;
            case 21:
                List list14 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool8 = (Boolean) hcx.l.k();
                bool8.getClass();
                return bool8;
            default:
                List list15 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.f11672ab.k()).longValue());
        }
    }
}
