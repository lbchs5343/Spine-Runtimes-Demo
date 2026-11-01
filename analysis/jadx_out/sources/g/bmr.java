package g;

import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.util.JsonReader;
import android.util.JsonToken;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.zzgyw;
import com.google.android.gms.internal.ads.zzgyx;
import java.util.ArrayList;
import java.util.List;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;

/* loaded from: classes3.dex */
public class bmr implements eya, efi, dbp, cce, aii, anu, gtx {
    public final /* synthetic */ int z;
    public static final bmr t = new bmr(1);
    public static final /* synthetic */ bmr j = new bmr(2);
    public static final String[] o = new String[0];
    public static final bmr p = new bmr(4);
    public static final bmr y = new bmr(5);

    /* renamed from: f, reason: collision with root package name */
    public static final bmr f11839f = new bmr(6);

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ bmr f11836a = new bmr(7);
    public static final /* synthetic */ bmr s = new bmr(8);
    public static final /* synthetic */ bmr i = new bmr(9);
    public static final /* synthetic */ bmr l = new bmr(10);
    public static final /* synthetic */ bmr k = new bmr(11);
    public static final /* synthetic */ bmr x = new bmr(12);
    public static final /* synthetic */ bmr u = new bmr(13);
    public static final /* synthetic */ bmr h = new bmr(14);

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ bmr f11837b = new bmr(15);
    public static final /* synthetic */ bmr w = new bmr(16);
    public static final /* synthetic */ bmr q = new bmr(17);
    public static final /* synthetic */ bmr n = new bmr(18);

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ bmr f11838d = new bmr(19);
    public static final /* synthetic */ bmr m = new bmr(20);

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ bmr f11840g = new bmr(21);
    public static final /* synthetic */ bmr v = new bmr(22);
    public static final bmr r = new bmr(23);

    public /* synthetic */ bmr(int i2) {
        this.z = i2;
    }

    public void aa(fdy fdyVar, float f2) {
        dmf dmfVar = (dmf) ((Drawable) fdyVar.f16634c);
        dur durVar = (dur) fdyVar.f16632a;
        boolean useCompatPadding = durVar.getUseCompatPadding();
        boolean preventCornerOverlap = durVar.getPreventCornerOverlap();
        if (f2 != dmfVar.f14421d || dmfVar.f14423f != useCompatPadding || dmfVar.k != preventCornerOverlap) {
            dmfVar.f14421d = f2;
            dmfVar.f14423f = useCompatPadding;
            dmfVar.k = preventCornerOverlap;
            dmfVar.m(null);
            dmfVar.invalidateSelf();
        }
        if (!durVar.getUseCompatPadding()) {
            fdyVar.w(0, 0, 0, 0);
            return;
        }
        dmf dmfVar2 = (dmf) ((Drawable) fdyVar.f16634c);
        float f3 = dmfVar2.f14421d;
        float f4 = dmfVar2.f14422e;
        int ceil = (int) Math.ceil(gbj.b(f3, f4, durVar.getPreventCornerOverlap()));
        int ceil2 = (int) Math.ceil(gbj.c(f3, f4, durVar.getPreventCornerOverlap()));
        fdyVar.w(ceil, ceil2, ceil, ceil2);
    }

    @Override // g.dbp
    public String[] ab() {
        return o;
    }

    @Override // g.eya
    public Object ak(Object obj) {
        ehi ehiVar = (ehi) obj;
        try {
            clq clqVar = new clq();
            ehiVar.c().ah(clqVar);
            return new dhd(ehiVar.e(), ehiVar.d(), clqVar, 1);
        } finally {
            ehiVar.close();
        }
    }

    @Override // g.cce
    public Object an(JsonReader jsonReader, float f2) {
        JsonToken peek = jsonReader.peek();
        if (peek != JsonToken.BEGIN_ARRAY && peek != JsonToken.BEGIN_OBJECT) {
            if (peek != JsonToken.NUMBER) {
                throw new IllegalArgumentException("Cannot convert json to point. Next token is ".concat(String.valueOf(peek)));
            }
            PointF pointF = new PointF(((float) jsonReader.nextDouble()) * f2, ((float) jsonReader.nextDouble()) * f2);
            while (jsonReader.hasNext()) {
                jsonReader.skipValue();
            }
            return pointF;
        }
        return cux.af(jsonReader, f2);
    }

    @Override // g.gtx
    public Object ao() {
        switch (this.z) {
            case 28:
                return new ArrayList();
            default:
                return new bny(true);
        }
    }

    @Override // g.anu
    public boolean c(Class cls) {
        return zzgyx.class.isAssignableFrom(cls);
    }

    @Override // g.dbp
    public WebViewProviderBoundaryInterface createWebView(WebView webView) {
        throw new UnsupportedOperationException("This should never happen, if this method was called it means we're trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily");
    }

    @Override // g.anu
    public cyk e(Class cls) {
        if (!zzgyx.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (cyk) zzgyx.bt(cls.asSubclass(zzgyx.class)).c(zzgyw.zzc, null);
        } catch (Exception e2) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e2);
        }
    }

    @Override // g.dbp
    public StaticsBoundaryInterface getStatics() {
        throw new UnsupportedOperationException("This should never happen, if this method was called it means we're trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily");
    }

    @Override // g.aii
    public Object zza() {
        switch (this.z) {
            case 7:
                List list = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l2 = (Long) biy.q.k();
                l2.getClass();
                return l2;
            case 8:
                List list2 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l3 = (Long) biy.s.k();
                l3.getClass();
                return l3;
            case 9:
                List list3 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l4 = (Long) biy.n.k();
                l4.getClass();
                return l4;
            case 10:
                List list4 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.ai.k()).longValue());
            case 11:
                List list5 = gad.z;
                ((chr) dkm.f14314a.zza()).getClass();
                return (String) chr.f12896b.k();
            case 12:
                List list6 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.x.k()).longValue());
            case 13:
                List list7 = gad.z;
                ((cwj) ((ua) cpw.f13296a.f13297b.zza())).getClass();
                Boolean bool = (Boolean) cwj.f13630a.k();
                bool.getClass();
                return bool;
            case 14:
                List list8 = gad.z;
                ((avh) ((gha) fnv.f17108a.f17109b.zza())).getClass();
                Boolean bool2 = (Boolean) avh.f10915a.k();
                bool2.getClass();
                return bool2;
            case 15:
                List list9 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return (String) biy.i.k();
            case 16:
                List list10 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.f11677f.k()).longValue());
            case 17:
                List list11 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool3 = (Boolean) hcx.j.k();
                bool3.getClass();
                return bool3;
            case 18:
                List list12 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool4 = (Boolean) hcx.f19242d.k();
                bool4.getClass();
                return bool4;
            case 19:
                List list13 = gad.z;
                ((dpp) ((gxu) eur.f16195a.f16196b.zza())).getClass();
                Boolean bool5 = (Boolean) dpp.f14602a.k();
                bool5.getClass();
                return bool5;
            case 20:
                List list14 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool6 = (Boolean) hcx.f19244f.k();
                bool6.getClass();
                return bool6;
            case 21:
                List list15 = gad.z;
                ((ffo) ((chv) gzi.f19050a.f19051b.zza())).getClass();
                Boolean bool7 = (Boolean) ffo.f16711a.k();
                bool7.getClass();
                return bool7;
            default:
                List list16 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return (String) biy.af.k();
        }
    }
}
