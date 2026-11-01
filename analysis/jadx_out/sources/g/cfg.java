package g;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbob;
import com.google.android.gms.internal.ads.zzboc;
import com.google.android.gms.internal.ads.zzebf;
import com.google.android.gms.internal.ads.zzfsd;
import com.google.android.gms.internal.ads.zzri;
import com.google.android.gms.internal.ads.zzrk;
import com.google.android.gms.internal.ads.zzro;
import com.google.android.gms.internal.ads.zzrp;
import com.google.android.gms.internal.ads.zzrq;
import com.google.android.gms.internal.ads.zzrs;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class cfg implements hdb, dfw, dzt, dle, dbf, cld, zzboc, zzbob, zzfsd, kq, anu, ere, zzrp {

    /* renamed from: f, reason: collision with root package name */
    public static cfg f12779f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f12780g;

    public /* synthetic */ cfg(int i) {
        this.f12780g = i;
    }

    public static byte[] h(List list) {
        bff.p(list, "protocols");
        clq clqVar = new clq();
        Iterator it = n(list).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            clqVar.al(str.length());
            clqVar.ap(str);
        }
        return clqVar.z(clqVar.f13080b);
    }

    public static boolean i() {
        return "Dalvik".equals(System.getProperty("java.vm.name"));
    }

    public static final boolean j(Context context, etg etgVar, gst gstVar, fre freVar) {
        int i = 0;
        if (etgVar == null) {
            agd.b("No intent data for launcher overlay.");
            return false;
        }
        zzbcn.zza(context);
        Intent intent = etgVar.zzh;
        if (intent != null) {
            return m(context, intent, gstVar, freVar, etgVar.zzj);
        }
        Intent intent2 = new Intent();
        if (TextUtils.isEmpty(etgVar.zzb)) {
            agd.b("Open GMSG did not contain a URL.");
            return false;
        }
        if (TextUtils.isEmpty(etgVar.zzc)) {
            intent2.setData(Uri.parse(etgVar.zzb));
        } else {
            String str = etgVar.zzb;
            intent2.setDataAndType(Uri.parse(str), etgVar.zzc);
        }
        intent2.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(etgVar.zzd)) {
            intent2.setPackage(etgVar.zzd);
        }
        if (!TextUtils.isEmpty(etgVar.zze)) {
            String[] split = etgVar.zze.split("/", 2);
            if (split.length < 2) {
                agd.b("Could not parse component name from open GMSG: ".concat(String.valueOf(etgVar.zze)));
                return false;
            }
            intent2.setClassName(split[0], split[1]);
        }
        String str2 = etgVar.zzf;
        if (!TextUtils.isEmpty(str2)) {
            try {
                i = Integer.parseInt(str2);
            } catch (NumberFormatException unused) {
                agd.b("Could not parse intent flags.");
            }
            intent2.addFlags(i);
        }
        zzbce zzbceVar = zzbcn.zzeC;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            intent2.addFlags(C.ENCODING_PCM_MU_LAW);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzeB)).booleanValue()) {
                esy esyVar = ti.f20033a.z;
                esy.z(context, intent2);
            }
        }
        return m(context, intent2, gstVar, freVar, etgVar.zzj);
    }

    public static void k(ggu gguVar, boolean z) {
        gqc gqcVar = gguVar.f18131g;
        fce fceVar = gguVar.i;
        int i = gqcVar.f18566ab;
        int i2 = fceVar.f16553ab;
        gqcVar.at(3 - (i2 % 4));
        int af = gqcVar.af() + i2;
        int af2 = gqcVar.af();
        if (z) {
            gqcVar.at(af2 * 8);
        } else {
            gguVar.n(0);
            int[] iArr = new int[af2];
            int[] iArr2 = new int[af2];
            for (int i3 = 0; i3 < af2; i3++) {
                iArr[i3] = gqcVar.af();
                int af3 = gqcVar.af() + i2;
                iArr2[i3] = af3;
                gguVar.q(af3);
            }
            fceVar.s = af;
            gguVar.q(af);
            fceVar.q = new ddo(af2, iArr, iArr2);
        }
        fceVar.v = gqcVar.f18566ab - i;
    }

    public static final String l(byte[] bArr, byte[][] bArr2, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        byte[] bArr3 = PublicSuffixDatabase.f21205a;
        int length = bArr.length;
        int i5 = 0;
        while (i5 < length) {
            int i6 = (i5 + length) / 2;
            while (i6 > -1 && bArr[i6] != 10) {
                i6--;
            }
            int i7 = i6 + 1;
            int i8 = 1;
            while (true) {
                i2 = i7 + i8;
                if (bArr[i2] == 10) {
                    break;
                }
                i8++;
            }
            int i9 = i2 - i7;
            int i10 = i;
            boolean z2 = false;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (z2) {
                    i3 = 46;
                    z = false;
                } else {
                    byte b2 = bArr2[i10][i11];
                    byte[] bArr4 = erq.f16043c;
                    int i13 = b2 & 255;
                    z = z2;
                    i3 = i13;
                }
                byte b3 = bArr[i7 + i12];
                byte[] bArr5 = erq.f16043c;
                i4 = i3 - (b3 & 255);
                if (i4 != 0) {
                    break;
                }
                i12++;
                i11++;
                if (i12 == i9) {
                    break;
                }
                if (bArr2[i10].length != i11) {
                    z2 = z;
                } else {
                    if (i10 == bArr2.length - 1) {
                        break;
                    }
                    i10++;
                    z2 = true;
                    i11 = -1;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i14 = i9 - i12;
                    int length2 = bArr2[i10].length - i11;
                    int length3 = bArr2.length;
                    for (int i15 = i10 + 1; i15 < length3; i15++) {
                        length2 += bArr2[i15].length;
                    }
                    if (length2 >= i14) {
                        if (length2 <= i14) {
                            Charset charset = StandardCharsets.UTF_8;
                            bff.e(charset, "UTF_8");
                            return new String(bArr, i7, i9, charset);
                        }
                    }
                }
                i5 = i2 + 1;
            }
            length = i6;
        }
        return null;
    }

    public static final boolean m(Context context, Intent intent, gst gstVar, fre freVar, boolean z) {
        int i;
        if (z) {
            Uri data = intent.getData();
            try {
                ti.f20033a.z.getClass();
                i = esy.aj(context, data);
                if (gstVar != null) {
                    gstVar.zzg();
                }
            } catch (ActivityNotFoundException e2) {
                agd.b(e2.getMessage());
                i = 6;
            }
            if (freVar != null) {
                freVar.zzb(i);
            }
            return i == 5;
        }
        try {
            agd.e("Launching an intent: " + intent.toURI());
            esy esyVar = ti.f20033a.z;
            esy.ad(context, intent);
            if (gstVar != null) {
                gstVar.zzg();
            }
            if (freVar != null) {
                freVar.zza(true);
            }
            return true;
        } catch (ActivityNotFoundException e3) {
            agd.b(e3.getMessage());
            if (freVar != null) {
                freVar.zza(false);
            }
            return false;
        }
    }

    public static ArrayList n(List list) {
        bff.p(list, "protocols");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((aqt) obj) != aqt.HTTP_1_0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(bkk.a(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((aqt) it.next()).toString());
        }
        return arrayList2;
    }

    @Override // g.dle
    public void _bt(ggu gguVar) {
        switch (this.f12780g) {
            case 7:
                k(gguVar, false);
                return;
            default:
                gqc gqcVar = gguVar.f18131g;
                fce fceVar = gguVar.i;
                int ap = gqcVar.ap();
                if (ap == 132) {
                    int ai = gqcVar.ai();
                    int ar = gqcVar.ar();
                    gguVar.k(0, ai);
                    gguVar.k(1, ai);
                    gguVar.i.p = ar;
                    fceVar.v = 5;
                    fceVar.ad(2);
                    fceVar.aa = cqf.ADD_INT_LIT;
                    return;
                }
                int ai2 = gqcVar.ai();
                switch (ap) {
                    case 21:
                    case 23:
                    case 25:
                        gguVar.k(1, ai2);
                        gguVar.s();
                        break;
                    case 22:
                    case 24:
                        gguVar.k(1, ai2);
                        gguVar.o();
                        break;
                    default:
                        switch (ap) {
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                            case 58:
                                gguVar.n(1);
                                gguVar.k(0, ai2);
                                break;
                            default:
                                throw new cyf(awf.d(new StringBuilder("Unexpected opcode in 'wide': 0x"), ap));
                        }
                }
                fceVar.v = 3;
                fceVar.ad(2);
                fceVar.aa = cqf.MOVE;
                return;
        }
    }

    @Override // g.hdb
    public boolean _bz(Context context, ert ertVar) {
        String str;
        String h;
        switch (this.f12780g) {
            case 0:
                Activity activity = (Activity) context;
                fml.d(activity);
                break;
            case 4:
                Activity activity2 = (Activity) context;
                ArrayList arrayList = new ArrayList();
                arrayList.add(fnp.e(activity2));
                int i = Build.VERSION.SDK_INT;
                asd bh = dyd.bh(i);
                String str2 = bh == null ? null : bh.f10742b;
                String str3 = Build.MANUFACTURER;
                str = "";
                if ("xiaomi".equalsIgnoreCase(str3)) {
                    if (TextUtils.isEmpty(aky.h("ro.mi.os.version.name"))) {
                        String h2 = aky.h("ro.vendor.build.version.incremental");
                        StringBuilder sb = new StringBuilder("MIUI ");
                        sb.append(aky.h("ro.miui.ui.version.code"));
                        sb.append(TextUtils.isEmpty(h2) ? "" : tn.ad("(", h2, ")"));
                        str = sb.toString();
                    } else {
                        str = "Hyper" + aky.h("ro.mi.os.version.name") + "(" + aky.h("ro.mi.os.version.incremental") + ")";
                    }
                } else if ("oppo".equalsIgnoreCase(str3)) {
                    str = fnp.q();
                } else {
                    if ("vivo".equalsIgnoreCase(str3)) {
                        h = aky.h("ro.vivo.os.build.display.id");
                        if (TextUtils.isEmpty(h)) {
                            h = aky.h("ro.build.version.ftouch");
                        }
                    } else if ("huawei".equalsIgnoreCase(str3) || "honor".equalsIgnoreCase(str3)) {
                        h = Build.DISPLAY.contains("HarmonyOS") ? aky.h("ro.build.version.harmonyos") : aky.h("ro.build.version.emui");
                    } else if ("Samsung".equalsIgnoreCase(str3)) {
                        str = aky.h("ro.build.version.oneui");
                    } else if ("OnePlus".equalsIgnoreCase(str3)) {
                        str = fnp.q();
                    } else {
                        "realme".equalsIgnoreCase(str3);
                    }
                    str = h;
                }
                if (!TextUtils.isEmpty(str)) {
                    arrayList.add(str);
                }
                if (TextUtils.isEmpty(str2)) {
                    arrayList.add(activity2.getString(R.string.system_version, Build.VERSION.RELEASE, Integer.toString(i)));
                } else {
                    arrayList.add(activity2.getString(R.string.system_version2, Build.VERSION.RELEASE, str2, Integer.toString(i)));
                }
                arrayList.add(activity2.getString(R.string.system_baseband_version, Build.getRadioVersion()));
                arrayList.add(activity2.getString(R.string.system_build_number, Build.DISPLAY));
                arrayList.add(activity2.getString(R.string.system_build_fingerprint, Build.FINGERPRINT));
                arrayList.add(activity2.getString(R.string.system_kernel_version, System.getProperty("os.version")));
                arrayList.add(activity2.getString(R.string.system_http_user_agent, System.getProperty("http.agent")));
                baf.ag(activity2, ertVar, TextUtils.join("\r\n", arrayList));
                break;
            default:
                Activity activity3 = (Activity) context;
                ArrayList arrayList2 = new ArrayList();
                String str4 = "32-Bit";
                if (dyd.bp(21)) {
                    String join = TextUtils.join(", ", Build.SUPPORTED_ABIS);
                    arrayList2.add(activity3.getString(R.string.cpu_abis, join));
                    if (join.contains("64")) {
                        str4 = "64-Bit";
                    }
                } else {
                    arrayList2.add(activity3.getString(R.string.cpu_abis, TextUtils.join(", ", new String[]{Build.CPU_ABI, Build.CPU_ABI2})));
                }
                arrayList2.add(activity3.getString(R.string.cpu_number, Integer.toString(Runtime.getRuntime().availableProcessors())));
                arrayList2.add(activity3.getString(R.string.cpu_bits, str4));
                String o = fnp.o();
                if (o != null) {
                    arrayList2.add(activity3.getString(R.string.cpu_hardware, o));
                }
                baf.ag(activity3, ertVar, TextUtils.join("\r\n", arrayList2));
                break;
        }
        return true;
    }

    @Override // g.dle
    public void _ct(ggu gguVar) {
        switch (this.f12780g) {
            case 7:
                k(gguVar, true);
                break;
            default:
                gqc gqcVar = gguVar.f18131g;
                fce fceVar = gguVar.i;
                if (gqcVar.ap() != 132) {
                    gqcVar.at(2);
                    fceVar.v = 3;
                    break;
                } else {
                    gqcVar.at(4);
                    fceVar.v = 5;
                    break;
                }
        }
    }

    @Override // g.kq
    public hcu a(Class cls) {
        throw new IllegalStateException("This should never be called.");
    }

    @Override // g.kq
    public boolean c(Class cls) {
        switch (this.f12780g) {
        }
        return false;
    }

    @Override // g.anu
    public cyk e(Class cls) {
        throw new IllegalStateException("This should never be called.");
    }

    @Override // g.dfw
    public List lookup(String str) {
        bff.p(str, "hostname");
        try {
            InetAddress[] allByName = InetAddress.getAllByName(str);
            bff.e(allByName, "getAllByName(hostname)");
            return fuv.bg(allByName);
        } catch (NullPointerException e2) {
            UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(str));
            unknownHostException.initCause(e2);
            throw unknownHostException;
        }
    }

    @Override // g.dbf
    public int o(String str, int i, Deque deque) {
        return i;
    }

    @Override // g.cld
    public Object p(JSONObject jSONObject, Object[] objArr) {
        if (objArr != null && objArr.length == 3) {
            String valueOf = String.valueOf(objArr[0]);
            if (!TextUtils.isEmpty(valueOf)) {
                try {
                    JSONObject jSONObject2 = new JSONObject(valueOf);
                    String valueOf2 = String.valueOf(objArr[1]);
                    if (!TextUtils.isEmpty(valueOf2)) {
                        return jSONObject2.optString(valueOf2, String.valueOf(objArr[2]));
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return null;
    }

    @Override // g.dzt
    public void q(ejd ejdVar) {
        if (ejdVar == null || ejdVar.f15636a != 0) {
            erl.y("p ack fail2, code is " + ejdVar.f15636a);
        }
    }

    @Override // g.ere
    public br v(Context context, String str, hc hcVar) {
        br brVar = new br();
        brVar.f12061a = hcVar.b(context, str);
        int i = 1;
        int a2 = hcVar.a(context, str, true);
        brVar.f12062b = a2;
        int i2 = brVar.f12061a;
        if (i2 == 0) {
            i2 = 0;
            if (a2 == 0) {
                i = 0;
                brVar.f12063c = i;
                return brVar;
            }
        }
        if (i2 >= a2) {
            i = -1;
        }
        brVar.f12063c = i;
        return brVar;
    }

    @Override // com.google.android.gms.internal.ads.zzrp
    public int zza(zzad zzadVar) {
        return zzadVar.zzs != null ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.zzboa
    public /* bridge */ /* synthetic */ Object zza(JSONObject jSONObject) {
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzrp
    public /* synthetic */ zzro zzb(zzrk zzrkVar, zzad zzadVar) {
        return zzro.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbob
    public JSONObject zzb(Object obj) {
        switch (this.f12780g) {
            case 19:
                return (JSONObject) obj;
            default:
                zzebf zzebfVar = (zzebf) obj;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziS)).booleanValue()) {
                    jSONObject2.put("ad_request_url", zzebfVar.zzd.zzg());
                    jSONObject2.put("ad_request_post_body", zzebfVar.zzd.zzf());
                }
                jSONObject2.put("base_url", zzebfVar.zzd.zzd());
                jSONObject2.put("signals", zzebfVar.zzc);
                jSONObject3.put("body", zzebfVar.zzb.zzc);
                jSONObject3.put(TTDownloadField.TT_HEADERS, cbv.f12612a.f12615d.q(zzebfVar.zzb.zzb));
                jSONObject3.put("response_code", zzebfVar.zzb.zza);
                jSONObject3.put("latency", zzebfVar.zzb.zzd);
                jSONObject.put("request", jSONObject2);
                jSONObject.put("response", jSONObject3);
                jSONObject.put("flags", zzebfVar.zzd.zzi());
                return jSONObject;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrp
    public zzrq zzc(zzrk zzrkVar, zzad zzadVar) {
        if (zzadVar.zzs == null) {
            return null;
        }
        return new zzrq(new zzri(new zzrs(1), 6001));
    }
}
