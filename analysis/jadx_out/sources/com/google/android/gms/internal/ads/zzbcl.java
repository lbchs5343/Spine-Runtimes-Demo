package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.text.TextUtils;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.chk;
import g.edt;
import g.evp;
import g.fma;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbcl implements SharedPreferences.OnSharedPreferenceChangeListener {
    public Context j;

    /* renamed from: d, reason: collision with root package name */
    public final Object f4729d = new Object();

    /* renamed from: g, reason: collision with root package name */
    public final ConditionVariable f4732g = new ConditionVariable();
    public volatile boolean i = false;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f4727b = false;

    /* renamed from: c, reason: collision with root package name */
    public SharedPreferences f4728c = null;

    /* renamed from: e, reason: collision with root package name */
    public Bundle f4730e = new Bundle();

    /* renamed from: a, reason: collision with root package name */
    public JSONObject f4726a = new JSONObject();

    /* renamed from: f, reason: collision with root package name */
    public boolean f4731f = false;
    public boolean h = false;

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (!"flag_configuration".equals(str) || sharedPreferences == null) {
            return;
        }
        try {
            this.f4726a = new JSONObject((String) zzbcp.zza(new zzbci(sharedPreferences)));
        } catch (JSONException unused) {
        }
    }

    public final Object zza(final zzbce zzbceVar) {
        if (!this.f4732g.block(PushUIConfig.dismissTime)) {
            synchronized (this.f4729d) {
                try {
                    if (!this.f4727b) {
                        throw new IllegalStateException("Flags.initialize() was not called!");
                    }
                } finally {
                }
            }
        }
        if (!this.i || this.f4728c == null || this.h) {
            synchronized (this.f4729d) {
                if (this.i && this.f4728c != null && !this.h) {
                }
                return zzbceVar.zzk();
            }
        }
        if (zzbceVar.zze() != 2) {
            return (zzbceVar.zze() == 1 && this.f4726a.has(zzbceVar.zzl())) ? zzbceVar.e(this.f4726a) : zzbcp.zza(new zzfxg() { // from class: com.google.android.gms.internal.ads.zzbcj
                @Override // com.google.android.gms.internal.ads.zzfxg
                public final Object zza() {
                    return zzbceVar.f(zzbcl.this.f4728c);
                }
            });
        }
        Bundle bundle = this.f4730e;
        return bundle == null ? zzbceVar.zzk() : zzbceVar.zzb(bundle);
    }

    public final Object zzb(zzbce zzbceVar) {
        return (this.i || this.f4727b) ? zza(zzbceVar) : zzbceVar.zzk();
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x0123, code lost:
    
        if (new org.json.JSONObject((java.lang.String) com.google.android.gms.internal.ads.zzbcp.zza(new com.google.android.gms.internal.ads.zzbch(r3))).optBoolean("local_flags_enabled") != false) goto L67;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012b A[Catch: all -> 0x000f, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x000f, blocks: (B:6:0x0009, B:8:0x000d, B:11:0x0012, B:13:0x0017, B:14:0x0019, B:16:0x002b, B:17:0x002f, B:19:0x0031, B:41:0x00a7, B:42:0x00ae, B:51:0x00de, B:57:0x012b, B:66:0x016c, B:67:0x0173, B:88:0x0175, B:89:0x017c, B:22:0x0046, B:25:0x004b, B:28:0x0059, B:31:0x0066, B:33:0x0070, B:34:0x0078, B:36:0x007e, B:38:0x008e, B:40:0x00a3, B:44:0x00b1, B:46:0x00b5, B:48:0x00c5, B:50:0x00da, B:52:0x00e6, B:55:0x0125, B:58:0x0134, B:60:0x014c, B:62:0x0150, B:63:0x0153, B:70:0x0158, B:65:0x016a, B:73:0x00f7, B:75:0x0105, B:77:0x010d, B:79:0x0118), top: B:5:0x0009, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0134 A[Catch: all -> 0x0061, TRY_ENTER, TryCatch #0 {all -> 0x0061, blocks: (B:22:0x0046, B:25:0x004b, B:28:0x0059, B:31:0x0066, B:33:0x0070, B:34:0x0078, B:36:0x007e, B:38:0x008e, B:40:0x00a3, B:44:0x00b1, B:46:0x00b5, B:48:0x00c5, B:50:0x00da, B:52:0x00e6, B:55:0x0125, B:58:0x0134, B:60:0x014c, B:62:0x0150, B:63:0x0153, B:70:0x0158, B:65:0x016a, B:73:0x00f7, B:75:0x0105, B:77:0x010d, B:79:0x0118), top: B:21:0x0046, outer: #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzd(Context context) {
        Context context2;
        SharedPreferences sharedPreferences;
        if (this.i) {
            return;
        }
        synchronized (this.f4729d) {
            try {
                if (this.i) {
                    return;
                }
                if (!this.f4727b) {
                    this.f4727b = true;
                }
                this.f4731f = TextUtils.equals(context.getPackageName(), "com.google.android.gms");
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.j = context;
                try {
                    this.f4730e = chk.c(context).b(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, this.j.getPackageName()).metaData;
                } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
                }
                try {
                    Context context3 = this.j;
                    AtomicBoolean atomicBoolean = evp.f16244c;
                    SharedPreferences sharedPreferences2 = null;
                    try {
                        context2 = context3.createPackageContext("com.google.android.gms", 3);
                    } catch (PackageManager.NameNotFoundException unused2) {
                        context2 = null;
                    }
                    if (context2 != null || context3 == null || (context2 = context3.getApplicationContext()) != null) {
                        context3 = context2;
                    }
                    if (context3 != null) {
                        zzbcg zzbcgVar = edt.f15376a.f15378c;
                        sharedPreferences2 = zzbcg.zza(context3);
                    }
                    if (sharedPreferences2 != null) {
                        zzbfe.zzc(new fma(sharedPreferences2));
                    }
                    if (!this.f4731f) {
                        zzbdx zzbdxVar = zzbef.zzd;
                        if (((Long) zzbdxVar.zze()).longValue() > 0 && zzbbx.zza(this.j) >= ((Long) zzbdxVar.zze()).longValue()) {
                            this.h = true;
                            this.i = true;
                            this.f4727b = false;
                            this.f4732g.open();
                            return;
                        }
                    }
                    if (!this.f4731f) {
                        zzbdx zzbdxVar2 = zzbef.zzf;
                        if (((Long) zzbdxVar2.zze()).longValue() > 0 && zzbbx.zzb(this.j) >= ((Long) zzbdxVar2.zze()).longValue()) {
                            this.h = true;
                            this.i = true;
                            this.f4727b = false;
                            this.f4732g.open();
                            return;
                        }
                    }
                    Context context4 = this.j;
                    if (!((Boolean) zzben.zzh.zze()).booleanValue()) {
                        if (((Boolean) zzben.zzi.zze()).booleanValue() && (r3 = context4.getSharedPreferences(MediationConstant.ADN_ADMOB, 0)) != null) {
                        }
                        if (context3 != null) {
                            this.f4727b = false;
                            this.f4732g.open();
                            return;
                        }
                        zzbcg zzbcgVar2 = edt.f15376a.f15378c;
                        this.f4728c = zzbcg.zza(context3);
                        if (!((Boolean) zzben.zza.zze()).booleanValue() && (sharedPreferences = this.f4728c) != null) {
                            sharedPreferences.registerOnSharedPreferenceChangeListener(this);
                        }
                        SharedPreferences sharedPreferences3 = this.f4728c;
                        if (sharedPreferences3 != null) {
                            try {
                                this.f4726a = new JSONObject((String) zzbcp.zza(new zzbci(sharedPreferences3)));
                            } catch (JSONException unused3) {
                            }
                        }
                        this.i = true;
                        this.f4727b = false;
                        this.f4732g.open();
                        return;
                    }
                    context3 = this.j;
                    if (context3 != null) {
                    }
                } catch (Throwable th) {
                    this.f4727b = false;
                    this.f4732g.open();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean zze() {
        return this.h;
    }
}
