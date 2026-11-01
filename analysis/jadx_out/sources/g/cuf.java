package g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Path;
import android.os.Bundle;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.gms.internal.ads.zzbnv;
import com.google.android.gms.internal.ads.zzbnw;
import com.google.android.gms.internal.ads.zzcas;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.gms.internal.ads.zzgzj;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class cuf implements hs, hdb, cqi, cld, zzcas, hdj, hc, zzgee {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f13525d;

    public /* synthetic */ cuf(int i) {
        this.f13525d = i;
    }

    public static Path e(float f2, float f3, float f4, float f5) {
        Path path = new Path();
        path.moveTo(f2, f3);
        path.lineTo(f4, f5);
        return path;
    }

    public static final zzgzj f(long j, Object obj) {
        zzgzj zzgzjVar = (zzgzj) gbc.v(j, obj);
        if (zzgzjVar.zzc()) {
            return zzgzjVar;
        }
        int size = zzgzjVar.size();
        zzgzj zzf = zzgzjVar.zzf(size == 0 ? 10 : size + size);
        gbc.k(j, obj, zzf);
        return zzf;
    }

    public static boolean g(int i, byte[] bArr, int i2) {
        int i3;
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i < i2) {
            while (i < i2) {
                int i4 = i + 1;
                i3 = bArr[i];
                if (i3 < 0) {
                    if (i3 >= -32) {
                        if (i3 >= -16) {
                            if (i4 < i2 - 2) {
                                int i5 = i + 2;
                                int i6 = bArr[i4];
                                if (i6 <= -65) {
                                    if ((((i6 + 112) + (i3 << 28)) >> 30) == 0) {
                                        int i7 = i + 3;
                                        if (bArr[i5] <= 65471) {
                                            i += 4;
                                            if (bArr[i7] > 65471) {
                                            }
                                        }
                                    }
                                }
                                i3 = -1;
                                break;
                            }
                            i3 = gua.b(bArr, i4, i2);
                            break;
                        }
                        if (i4 < i2 - 1) {
                            int i8 = i + 2;
                            char c2 = bArr[i4];
                            if (c2 <= 65471 && ((i3 != -32 || c2 >= 65440) && (i3 != -19 || c2 < 65440))) {
                                i += 3;
                                if (bArr[i8] > 65471) {
                                }
                            }
                            i3 = -1;
                            break;
                        }
                        i3 = gua.b(bArr, i4, i2);
                        break;
                    }
                    if (i4 < i2) {
                        if (i3 >= -62) {
                            i += 2;
                            if (bArr[i4] > 65471) {
                            }
                        }
                        i3 = -1;
                        break;
                    }
                    break;
                }
                i = i4;
            }
        }
        i3 = 0;
        return i3 == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0113  */
    @Override // g.hdb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean _bz(Context context, ert ertVar) {
        FileOutputStream fileOutputStream;
        Intent intent;
        char charAt;
        switch (this.f13525d) {
            case 3:
                String aq = baf.aq();
                try {
                    fileOutputStream = context.openFileOutput("system_build.prop", 0);
                } catch (IOException unused) {
                    fileOutputStream = null;
                }
                try {
                    fileOutputStream.write(aq.getBytes());
                    fileOutputStream.close();
                } catch (IOException unused2) {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString(bid.EXTRA_FILE_PATH, context.getFilesDir().getPath() + "/system_build.prop");
                    bundle.putBoolean(bid.EXTRA_NEED_STORAGE_PERMISSION, false);
                    bundle.putBoolean(fyx.EXTRA_IS_FINDABLE, true);
                    bundle.putBoolean(fyx.EXTRA_IS_FIND_SHOWED, true);
                    bundle.putBoolean(fyx.EXTRA_IS_DISPLAY_HOME_AS_UP, true);
                    bundle.putBoolean(bid.EXTRA_THEME_ADAPTIVE, true);
                    intent = new Intent(fgj.d(context), (Class<?>) a.a.aa.class);
                    intent.setAction("android.intent.action.VIEW");
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                    intent.putExtras(bundle);
                    intent.setFlags(intent.getFlags() & (-268435457));
                    if (!fgj.e().g(context, intent, false, false, true)) {
                    }
                    return true;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString(bid.EXTRA_FILE_PATH, context.getFilesDir().getPath() + "/system_build.prop");
                bundle2.putBoolean(bid.EXTRA_NEED_STORAGE_PERMISSION, false);
                bundle2.putBoolean(fyx.EXTRA_IS_FINDABLE, true);
                bundle2.putBoolean(fyx.EXTRA_IS_FIND_SHOWED, true);
                bundle2.putBoolean(fyx.EXTRA_IS_DISPLAY_HOME_AS_UP, true);
                bundle2.putBoolean(bid.EXTRA_THEME_ADAPTIVE, true);
                intent = new Intent(fgj.d(context), (Class<?>) a.a.aa.class);
                intent.setAction("android.intent.action.VIEW");
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                intent.putExtras(bundle2);
                intent.setFlags(intent.getFlags() & (-268435457));
                if (!fgj.e().g(context, intent, false, false, true)) {
                    baf.ag((Activity) context, ertVar, baf.aq());
                }
            default:
                Activity activity = (Activity) context;
                String property = System.getProperty("java.vm.version");
                boolean z = !TextUtils.isEmpty(property) && (charAt = property.charAt(0)) <= '9' && charAt >= '2';
                ArrayList arrayList = new ArrayList();
                arrayList.add(z ? "Art" : "Dalvik");
                arrayList.add(activity.getString(R.string.vm_version, property));
                arrayList.add(activity.getString(R.string.vm_java_home, System.getProperty("java.home")));
                arrayList.add(activity.getString(R.string.vm_class_path, System.getProperty("java.class.path")));
                arrayList.add(activity.getString(R.string.vm_boot_class_path, System.getProperty("java.boot.class.path")));
                baf.ag(activity, ertVar, TextUtils.join("\r\n", arrayList));
                break;
        }
        return true;
    }

    @Override // g.hc
    public int a(Context context, String str, boolean z) {
        return dxw.p(context, str, z);
    }

    @Override // g.hc
    public int b(Context context, String str) {
        return dxw.r(context, str);
    }

    @Override // g.hs
    public fgd c(aga agaVar) {
        return new exq((Context) agaVar.f10169a, (String) agaVar.f10170b, (dsg) agaVar.f10171c, agaVar.f10172d, agaVar.f10173e);
    }

    @Override // g.cqi
    public long l() {
        return System.currentTimeMillis();
    }

    @Override // g.cld
    public Object p(JSONObject jSONObject, Object[] objArr) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        switch (this.f13525d) {
            case 14:
                if (objArr == null || objArr.length <= 0) {
                    return null;
                }
                for (Object obj : objArr) {
                    String valueOf = String.valueOf(obj);
                    if (!TextUtils.isEmpty(valueOf) && !TextUtils.equals(valueOf, "null")) {
                        return valueOf;
                    }
                }
                return null;
            default:
                if (objArr == null || objArr.length != 0) {
                    return null;
                }
                String valueOf2 = String.valueOf(objArr[2]);
                String valueOf3 = String.valueOf(objArr[1]);
                String valueOf4 = String.valueOf(objArr[0]);
                if (TextUtils.isEmpty(valueOf4) || jSONObject == null || (optJSONObject = jSONObject.optJSONObject("i18n")) == null || (optJSONObject2 = optJSONObject.optJSONObject(valueOf3)) == null) {
                    return valueOf2;
                }
                String optString = optJSONObject2.optString(valueOf4);
                return TextUtils.isEmpty(optString) ? valueOf2 : optString;
        }
    }

    public String toString() {
        switch (this.f13525d) {
            case 11:
                return "default";
            default:
                return super.toString();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    public /* bridge */ /* synthetic */ void zza(Object obj) {
        agd.e("Ending javascript session.");
        ((zzbnw) ((zzbnv) obj)).zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        agd.e("Notification of cache hit failed.");
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public /* synthetic */ void zzb(Object obj) {
        agd.e("Notification of cache hit successful.");
    }
}
