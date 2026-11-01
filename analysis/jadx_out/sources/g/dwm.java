package g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.util.JsonReader;
import android.util.JsonToken;
import android.view.accessibility.AccessibilityNodeInfo;
import cn.trinea.android.developertools.R;
import com.google.android.accessibility.selecttospeak.SelectToSpeakService;
import com.google.firebase.analytics.connector.internal.AnalyticsConnectorRegistrar;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* loaded from: classes.dex */
public final class dwm implements eya, efi, cce, avn, aii, caf, eqj, hdb, gtx {
    public final /* synthetic */ int aa;
    public static final dwm t = new dwm(1);
    public static final /* synthetic */ dwm j = new dwm(2);
    public static final /* synthetic */ dwm o = new dwm(3);
    public static final dwm p = new dwm(4);
    public static final dwm z = new dwm(5);

    /* renamed from: f, reason: collision with root package name */
    public static final dwm f14948f = new dwm(6);

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ dwm f14945b = new dwm(7);
    public static final /* synthetic */ dwm s = new dwm(8);
    public static final /* synthetic */ dwm i = new dwm(9);
    public static final /* synthetic */ dwm l = new dwm(10);
    public static final /* synthetic */ dwm k = new dwm(11);
    public static final /* synthetic */ dwm y = new dwm(12);
    public static final /* synthetic */ dwm u = new dwm(13);
    public static final /* synthetic */ dwm h = new dwm(14);

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ dwm f14946c = new dwm(15);
    public static final /* synthetic */ dwm w = new dwm(16);
    public static final /* synthetic */ dwm q = new dwm(17);
    public static final /* synthetic */ dwm n = new dwm(18);

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ dwm f14947d = new dwm(19);
    public static final /* synthetic */ dwm m = new dwm(20);

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ dwm f14949g = new dwm(21);
    public static final /* synthetic */ dwm v = new dwm(22);

    public /* synthetic */ dwm(int i2) {
        this.aa = i2;
    }

    public static gei ab(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: ".concat(str).toString());
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) (eg.z(str.charAt(i3 + 1)) + (eg.z(str.charAt(i3)) << 4));
        }
        return new gei(bArr);
    }

    public static gei ac(String str) {
        bff.p(str, "<this>");
        byte[] bytes = str.getBytes(ejm.f15667a);
        bff.e(bytes, "this as java.lang.String).getBytes(charset)");
        gei geiVar = new gei(bytes);
        geiVar.p = str;
        return geiVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x007d, code lost:
    
        r5 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static gei ad(String str) {
        int i2;
        char charAt;
        bff.p(str, "<this>");
        byte[] bArr = aya.f11049a;
        int length = str.length();
        while (length > 0 && ((charAt = str.charAt(length - 1)) == '=' || charAt == '\n' || charAt == '\r' || charAt == ' ' || charAt == '\t')) {
            length--;
        }
        int i3 = (int) ((length * 6) / 8);
        byte[] bArr2 = new byte[i3];
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            if (i4 < length) {
                char charAt2 = str.charAt(i4);
                if ('A' <= charAt2 && charAt2 < '[') {
                    i2 = charAt2 - 'A';
                } else if ('a' <= charAt2 && charAt2 < '{') {
                    i2 = charAt2 - 'G';
                } else if ('0' <= charAt2 && charAt2 < ':') {
                    i2 = charAt2 + 4;
                } else if (charAt2 == '+' || charAt2 == '-') {
                    i2 = 62;
                } else if (charAt2 == '/' || charAt2 == '_') {
                    i2 = 63;
                } else {
                    if (charAt2 != '\n' && charAt2 != '\r' && charAt2 != ' ' && charAt2 != '\t') {
                        break;
                    }
                    i4++;
                }
                i6 = (i6 << 6) | i2;
                i5++;
                if (i5 % 4 == 0) {
                    bArr2[i7] = (byte) (i6 >> 16);
                    int i8 = i7 + 2;
                    bArr2[i7 + 1] = (byte) (i6 >> 8);
                    i7 += 3;
                    bArr2[i8] = (byte) i6;
                }
                i4++;
            } else {
                int i9 = i5 % 4;
                if (i9 != 1) {
                    if (i9 == 2) {
                        bArr2[i7] = (byte) ((i6 << 12) >> 16);
                        i7++;
                    } else if (i9 == 3) {
                        int i10 = i6 << 6;
                        int i11 = i7 + 1;
                        bArr2[i7] = (byte) (i10 >> 16);
                        i7 += 2;
                        bArr2[i11] = (byte) (i10 >> 8);
                    }
                    if (i7 != i3) {
                        bArr2 = Arrays.copyOf(bArr2, i7);
                        bff.e(bArr2, "copyOf(this, newSize)");
                    }
                }
            }
        }
        if (bArr2 != null) {
            return new gei(bArr2);
        }
        return null;
    }

    public static gei ae(byte[] bArr) {
        gei geiVar = gei.n;
        int length = bArr.length;
        acw.aw(bArr.length, 0, length);
        cro.aq(length, bArr.length);
        byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, length);
        bff.e(copyOfRange, "copyOfRange(...)");
        return new gei(copyOfRange);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0025, code lost:
    
        if (g.yb.l(r2, r3) != false) goto L34;
     */
    @Override // g.hdb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean _bz(Context context, ert ertVar) {
        int i2 = 1;
        switch (this.aa) {
            case 26:
                fzn.l(context).q(new Intent("c.t.d.p.bdf").putExtra("tool-id", ertVar.q));
                break;
            default:
                Activity activity = (Activity) context;
                String str = ertVar.q;
                Map map = b.c.e.f360a;
                if (map.containsKey(str)) {
                    String str2 = ertVar.q;
                    int i3 = yb.f20327a;
                    Bundle bundle = new Bundle();
                    bundle.putString("tool", str2);
                    break;
                }
                int i4 = bus.f12241a;
                String str3 = null;
                if (!cro.an(activity, "shizuku_compatibility_mode_enabled", false) || !map.containsKey(ertVar.q)) {
                    AccessibilityNodeInfo accessibilityNodeInfo = ern.f16037c;
                    if (!ern.h(activity, SelectToSpeakService.class.getName())) {
                        String o2 = aky.o(activity, R.string.auto_dev_options_accessibility_permission, R.string.acb, R.string.auto_dev_options_accessibility_permission_suffix);
                        if (fml.e(activity)) {
                            str3 = activity.getString(byh.aj(activity) ? R.string.ad_unit_id_app_c : R.string.ad_unit_id_app_g);
                        }
                        eib.bd(activity, o2, str3, new bxf(activity, ertVar), new bxf(ertVar, activity), null);
                        break;
                    } else {
                        cro.aa(activity, ertVar);
                        break;
                    }
                } else if (!cro.p) {
                    cro.p = true;
                    bli.n = null;
                    try {
                        ark q2 = ark.q(activity);
                        String str4 = ertVar.q;
                        gdi gdiVar = new gdi(activity, ertVar);
                        q2.getClass();
                        Handler handler = q2.m;
                        if (map.containsKey(str4)) {
                            handler.post(new euq(q2, new gnl(new aoi(15, str4), gdiVar), i2));
                        } else {
                            handler.post(new fvi(21, gdiVar));
                        }
                        break;
                    } catch (RuntimeException unused) {
                        cro.p = false;
                        cro.u(activity, ertVar, "operation_failed");
                        break;
                    }
                } else {
                    gm.e(activity, R.string.shizuku_operation_in_progress);
                    break;
                }
        }
        return true;
    }

    @Override // g.eya
    public Object ak(Object obj) {
        return (ehi) obj;
    }

    @Override // g.cce
    public Object an(JsonReader jsonReader, float f2) {
        switch (this.aa) {
            case 5:
                return Integer.valueOf(Math.round(cux.ac(jsonReader) * f2));
            default:
                boolean z2 = jsonReader.peek() == JsonToken.BEGIN_ARRAY;
                if (z2) {
                    jsonReader.beginArray();
                }
                double nextDouble = jsonReader.nextDouble();
                double nextDouble2 = jsonReader.nextDouble();
                double nextDouble3 = jsonReader.nextDouble();
                double nextDouble4 = jsonReader.peek() == JsonToken.NUMBER ? jsonReader.nextDouble() : 1.0d;
                if (z2) {
                    jsonReader.endArray();
                }
                if (nextDouble <= 1.0d && nextDouble2 <= 1.0d && nextDouble3 <= 1.0d) {
                    nextDouble *= 255.0d;
                    nextDouble2 *= 255.0d;
                    nextDouble3 *= 255.0d;
                    if (nextDouble4 <= 1.0d) {
                        nextDouble4 *= 255.0d;
                    }
                }
                return Integer.valueOf(Color.argb((int) nextDouble4, (int) nextDouble, (int) nextDouble2, (int) nextDouble3));
        }
    }

    @Override // g.gtx
    public Object ao() {
        switch (this.aa) {
            case 27:
                return new TreeSet();
            default:
                return new ConcurrentHashMap();
        }
    }

    @Override // g.avn
    public Object e(xa xaVar) {
        return AnalyticsConnectorRegistrar.lambda$getComponents$0(xaVar);
    }

    @Override // g.caf
    public boolean r(ftn ftnVar) {
        return false;
    }

    @Override // g.caf
    public void x(ftn ftnVar, boolean z2) {
    }

    @Override // g.aii
    public Object zza() {
        switch (this.aa) {
            case 8:
                List list = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l2 = (Long) biy.f11674c.k();
                l2.getClass();
                return l2;
            case 9:
                List list2 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l3 = (Long) biy.m.k();
                l3.getClass();
                return l3;
            case 10:
                List list3 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.z.k()).longValue());
            case 11:
                List list4 = gad.z;
                ((chr) dkm.f14314a.zza()).getClass();
                return Integer.valueOf((int) ((Long) chr.f12899e.k()).longValue());
            case 12:
                List list5 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l4 = (Long) biy.aj.k();
                l4.getClass();
                return l4;
            case 13:
                List list6 = gad.z;
                ((bgt) ((fvz) fdd.f16593a.f16594b.zza())).getClass();
                Boolean bool = (Boolean) bgt.f11541a.k();
                bool.getClass();
                return bool;
            case 14:
                List list7 = gad.z;
                ((fqx) ((alb) bks.f11758a.f11759b.zza())).getClass();
                Boolean bool2 = (Boolean) fqx.f17269a.k();
                bool2.getClass();
                return bool2;
            case 15:
                List list8 = gad.z;
                ((gny) ((dkg) blm.f11789a.f11790b.zza())).getClass();
                Boolean bool3 = (Boolean) gny.f18480a.k();
                bool3.getClass();
                return bool3;
            case 16:
                List list9 = gad.z;
                ((agq) ((ayq) auw.f10898a.f10899b.zza())).getClass();
                Boolean bool4 = (Boolean) agq.f10193a.k();
                bool4.getClass();
                return bool4;
            case 17:
                List list10 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.ah.k()).longValue());
            case 18:
                List list11 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool5 = (Boolean) hcx.f19241c.k();
                bool5.getClass();
                return bool5;
            case 19:
                List list12 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool6 = (Boolean) hcx.n.k();
                bool6.getClass();
                return bool6;
            case 20:
                List list13 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.f11673b.k()).longValue());
            case 21:
                List list14 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.r.k()).longValue());
            default:
                List list15 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l5 = (Long) biy.t.k();
                l5.getClass();
                return l5;
        }
    }
}
