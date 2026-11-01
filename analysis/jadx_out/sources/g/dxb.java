package g;

import android.app.ActivityOptions;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.AudioFormat;
import android.media.Spatializer;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzg;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class dxb {

    /* renamed from: a, reason: collision with root package name */
    public Object f14995a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f14996b;

    /* renamed from: c, reason: collision with root package name */
    public Object f14997c;

    /* renamed from: d, reason: collision with root package name */
    public Object f14998d;

    public dxb() {
        this.f14997c = new Intent("android.intent.action.VIEW");
        this.f14998d = new ao(29);
        this.f14996b = true;
    }

    public dxb(bpr bprVar) {
        Intent intent = new Intent("android.intent.action.VIEW");
        this.f14997c = intent;
        this.f14998d = new ao(29);
        this.f14996b = true;
        if (bprVar != null) {
            intent.setPackage(bprVar.f11970a.getPackageName());
            cfo cfoVar = bprVar.f11973d;
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", cfoVar);
            intent.putExtras(bundle);
        }
    }

    public dxb(gmr gmrVar, String str) {
        this.f14995a = gmrVar;
        ckd.bf(str);
        this.f14997c = str;
    }

    public boolean e(zzad zzadVar, zzg zzgVar) {
        boolean canBeSpatialized;
        int zzi = zzen.zzi(("audio/eac3-joc".equals(zzadVar.zzo) && zzadVar.zzC == 16) ? 12 : zzadVar.zzC);
        if (zzi == 0) {
            return false;
        }
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(zzi);
        int i = zzadVar.zzD;
        if (i != -1) {
            channelMask.setSampleRate(i);
        }
        canBeSpatialized = ((Spatializer) this.f14997c).canBeSpatialized(zzgVar.zza().zza, channelMask.build());
        return canBeSpatialized;
    }

    public boolean f(int... iArr) {
        boolean z;
        bff.p(iArr, "tableIds");
        synchronized (this) {
            z = false;
            for (int i : iArr) {
                long[] jArr = (long[]) this.f14997c;
                long j = jArr[i];
                jArr[i] = 1 + j;
                if (j == 0) {
                    z = true;
                    this.f14996b = true;
                }
            }
        }
        return z;
    }

    public boolean g(int... iArr) {
        boolean z;
        bff.p(iArr, "tableIds");
        synchronized (this) {
            z = false;
            for (int i : iArr) {
                long[] jArr = (long[]) this.f14997c;
                long j = jArr[i];
                jArr[i] = j - 1;
                if (j == 1) {
                    z = true;
                    this.f14996b = true;
                }
            }
        }
        return z;
    }

    public fdy h() {
        Intent intent = (Intent) this.f14997c;
        if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", null);
            intent.putExtras(bundle);
        }
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f14996b);
        ((ao) this.f14998d).getClass();
        intent.putExtras(new Bundle());
        intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            String a2 = djz.a();
            if (!TextUtils.isEmpty(a2)) {
                Bundle bundleExtra = intent.hasExtra("com.android.browser.headers") ? intent.getBundleExtra("com.android.browser.headers") : new Bundle();
                if (!bundleExtra.containsKey("Accept-Language")) {
                    bundleExtra.putString("Accept-Language", a2);
                    intent.putExtra("com.android.browser.headers", bundleExtra);
                }
            }
        }
        if (i >= 34) {
            if (((ActivityOptions) this.f14995a) == null) {
                this.f14995a = cpl.a();
            }
            foz.a((ActivityOptions) this.f14995a, false);
        }
        ActivityOptions activityOptions = (ActivityOptions) this.f14995a;
        return new fdy(intent, 7, activityOptions != null ? activityOptions.toBundle() : null);
    }

    public String i() {
        if (!this.f14996b) {
            this.f14996b = true;
            this.f14998d = ((gmr) this.f14995a).ar().getString((String) this.f14997c, null);
        }
        return (String) this.f14998d;
    }

    public chf j(cci cciVar, Object obj, boolean z) {
        chf chfVar;
        cci cciVar2;
        bqm bqmVar = (bqm) this.f14997c;
        if (this.f14996b) {
            cci cciVar3 = cciVar;
            dwg dwgVar = cciVar3.f12631ab;
            boolean z2 = true;
            if (obj instanceof Integer) {
                Integer num = (Integer) obj;
                String str = (String) ((HashMap) this.f14995a).get(num);
                if (str != null && (cciVar2 = dwgVar.s) != null) {
                    String[] split = str.split("/", 2);
                    if (split.length == 2) {
                        String str2 = split[0];
                        String str3 = split[1];
                        Iterator it = cciVar2.i.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                cciVar2.bs("Not found resource field with id: " + num + ", name: " + str.replace('/', '.'));
                                break;
                            }
                            cci cciVar4 = (cci) it.next();
                            if (cciVar4.ak.f20150e.equals(str2)) {
                                cciVar4.av();
                                for (hcd hcdVar : cciVar4.ag) {
                                    if (hcdVar.f19217g.f14712e.equals(str3)) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
                hcdVar = null;
                if (hcdVar != null) {
                    return hcdVar;
                }
            }
            HashSet hashSet = bqmVar.f12024b;
            ConcurrentHashMap concurrentHashMap = bqmVar.f12023a;
            if (!hashSet.contains(obj) && !concurrentHashMap.containsKey(obj)) {
                z2 = false;
            }
            if (!z2 || z) {
                while (cciVar3 != null) {
                    bqm bqmVar2 = (bqm) ((HashMap) this.f14998d).get(cciVar3);
                    if (bqmVar2 == null || (chfVar = (chf) bqmVar2.f12023a.get(obj)) == null) {
                        ve veVar = cciVar3.ak.f20148c;
                        if (veVar == null) {
                            break;
                        }
                        cciVar3 = dwgVar.ae(veVar);
                    } else if (!z2) {
                        return chfVar;
                    }
                }
                if (z) {
                    return (chf) concurrentHashMap.get(obj);
                }
            }
        }
        return null;
    }

    public int[] k() {
        synchronized (this) {
            try {
                if (!this.f14996b) {
                    return null;
                }
                long[] jArr = (long[]) this.f14997c;
                int length = jArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    int i3 = i2 + 1;
                    int i4 = 1;
                    boolean z = jArr[i] > 0;
                    boolean[] zArr = (boolean[]) this.f14998d;
                    if (z != zArr[i2]) {
                        int[] iArr = (int[]) this.f14995a;
                        if (!z) {
                            i4 = 2;
                        }
                        iArr[i2] = i4;
                    } else {
                        ((int[]) this.f14995a)[i2] = 0;
                    }
                    zArr[i2] = z;
                    i++;
                    i2 = i3;
                }
                this.f14996b = false;
                return (int[]) ((int[]) this.f14995a).clone();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void l(String str) {
        SharedPreferences.Editor edit = ((gmr) this.f14995a).ar().edit();
        edit.putString((String) this.f14997c, str);
        edit.apply();
        this.f14998d = str;
    }
}
