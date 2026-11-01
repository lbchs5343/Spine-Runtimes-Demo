package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import g.abn;
import g.abz;
import g.edt;
import g.ti;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzelr extends zzbrh {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f7219a;

    /* renamed from: b, reason: collision with root package name */
    public final long f7220b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7221c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbrf f7222d;

    /* renamed from: e, reason: collision with root package name */
    public final zzcao f7223e;

    public zzelr(String str, zzbrf zzbrfVar, zzcao zzcaoVar, long j) {
        JSONObject jSONObject = new JSONObject();
        this.f7219a = jSONObject;
        this.f7221c = false;
        this.f7223e = zzcaoVar;
        this.f7222d = zzbrfVar;
        this.f7220b = j;
        try {
            jSONObject.put("adapter_version", zzbrfVar.zzf().toString());
            jSONObject.put(PluginConstants.KEY_SDK_VERSION, zzbrfVar.zzg().toString());
            jSONObject.put(abn.EXTRA_UA_APP_NAME, str);
        } catch (RemoteException | NullPointerException | JSONException unused) {
        }
    }

    public static synchronized void zzb(String str, zzcao zzcaoVar) {
        synchronized (zzelr.class) {
            try {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(abn.EXTRA_UA_APP_NAME, str);
                    jSONObject.put("signal_error", "Adapter failed to instantiate");
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbG)).booleanValue()) {
                        jSONObject.put("signal_error_code", 1);
                    }
                    zzcaoVar.zzc(jSONObject);
                } catch (JSONException unused) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void f(int i, String str) {
        try {
            if (this.f7221c) {
                return;
            }
            try {
                this.f7219a.put("signal_error", str);
                zzbce zzbceVar = zzbcn.zzbH;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    JSONObject jSONObject = this.f7219a;
                    ti.f20033a.v.getClass();
                    jSONObject.put("latency", SystemClock.elapsedRealtime() - this.f7220b);
                }
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzbG)).booleanValue()) {
                    this.f7219a.put("signal_error_code", i);
                }
            } catch (JSONException unused) {
            }
            this.f7223e.zzc(this.f7219a);
            this.f7221c = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzc() {
        f(3, "Signal collection timeout.");
    }

    public final synchronized void zzd() {
        if (this.f7221c) {
            return;
        }
        try {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbG)).booleanValue()) {
                this.f7219a.put("signal_error_code", 0);
            }
        } catch (JSONException unused) {
        }
        this.f7223e.zzc(this.f7219a);
        this.f7221c = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbri
    public final synchronized void zze(String str) throws RemoteException {
        if (this.f7221c) {
            return;
        }
        if (str == null) {
            zzf("Adapter returned null signals");
            return;
        }
        try {
            this.f7219a.put("signals", str);
            zzbce zzbceVar = zzbcn.zzbH;
            edt edtVar = edt.f15376a;
            if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                JSONObject jSONObject = this.f7219a;
                ti.f20033a.v.getClass();
                jSONObject.put("latency", SystemClock.elapsedRealtime() - this.f7220b);
            }
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzbG)).booleanValue()) {
                this.f7219a.put("signal_error_code", 0);
            }
        } catch (JSONException unused) {
        }
        this.f7223e.zzc(this.f7219a);
        this.f7221c = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbri
    public final synchronized void zzf(String str) throws RemoteException {
        f(2, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbri
    public final synchronized void zzg(abz abzVar) throws RemoteException {
        f(2, abzVar.zzb);
    }
}
