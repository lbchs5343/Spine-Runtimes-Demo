package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.dcy;
import g.edt;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzeth implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final Set f7522a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7523b;

    /* renamed from: c, reason: collision with root package name */
    public final ViewGroup f7524c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f7525d;

    public zzeth(zzges zzgesVar, ViewGroup viewGroup, Context context, Set set) {
        this.f7523b = zzgesVar;
        this.f7522a = set;
        this.f7524c = viewGroup;
        this.f7525d = context;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 22;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7523b.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzetg
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzeth zzethVar = zzeth.this;
                Set set = zzethVar.f7522a;
                ViewGroup viewGroup = zzethVar.f7524c;
                zzbce zzbceVar = zzbcn.zzfN;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && viewGroup != null && set.contains(MediationConstant.RIT_TYPE_BANNER)) {
                    return new zzeti(Boolean.valueOf(viewGroup.isHardwareAccelerated()));
                }
                Boolean bool = null;
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzfO)).booleanValue() && set.contains("native")) {
                    Context context = zzethVar.f7525d;
                    if (context instanceof Activity) {
                        Activity activity = (Activity) context;
                        Window window = activity.getWindow();
                        if (window == null || (window.getAttributes().flags & 16777216) == 0) {
                            try {
                                bool = Boolean.valueOf((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) != 0);
                            } catch (PackageManager.NameNotFoundException unused) {
                            }
                        } else {
                            bool = Boolean.TRUE;
                        }
                        return new zzeti(bool);
                    }
                }
                return new zzeti(null);
            }
        });
    }
}
