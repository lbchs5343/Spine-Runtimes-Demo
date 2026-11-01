package g;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbei;
import com.google.android.gms.internal.ads.zzbew;
import com.google.android.gms.internal.ads.zzfxd;
import pkg.a.ModuleDescriptor;

/* loaded from: classes3.dex */
public abstract class bir {
    public static final drf i;

    static {
        drf drfVar = null;
        try {
            Object newInstance = ph.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(null).newInstance(null);
            if (newInstance instanceof IBinder) {
                IBinder iBinder = (IBinder) newInstance;
                if (iBinder != null) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    drfVar = queryLocalInterface instanceof drf ? (drf) queryLocalInterface : new uq("com.google.android.gms.ads.internal.client.IClientApi", iBinder);
                }
            } else {
                agd.b("ClientApi class is not an instance of IBinder.");
            }
        } catch (Exception unused) {
            agd.b("Failed to instantiate ClientApi class.");
        }
        i = drfVar;
    }

    public abstract Object e();

    public abstract Object f(drf drfVar);

    public abstract Object g();

    /* JADX WARN: Removed duplicated region for block: B:14:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0074 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object j(Context context, boolean z) {
        boolean z2;
        Object obj;
        Object obj2;
        if (!z) {
            mx mxVar = cbv.f12612a.f12615d;
            if (gna.i.l(context, 12451000) != 0) {
                agd.c("Google Play Services is not available.");
                z = true;
            }
        }
        boolean z3 = false;
        boolean z4 = !(dxw.r(context, ModuleDescriptor.MODULE_ID) <= dxw.p(context, ModuleDescriptor.MODULE_ID, false));
        zzbcn.zza(context);
        if (!((Boolean) zzbei.zza.zze()).booleanValue()) {
            if (((Boolean) zzbei.zzb.zze()).booleanValue()) {
                z2 = true;
                z3 = true;
                drf drfVar = i;
                Object obj3 = null;
                if (z3) {
                    try {
                        obj = g();
                    } catch (RemoteException unused) {
                        zzfxd zzfxdVar = agd.f10175a;
                        obj = null;
                    }
                    if (obj == null) {
                        int intValue = ((Long) zzbew.zza.zze()).intValue();
                        cbv cbvVar = cbv.f12612a;
                        if (cbvVar.f12614c.nextInt(intValue) == 0) {
                            Bundle bundle = new Bundle();
                            bundle.putString("action", "dynamite_load");
                            bundle.putInt("is_missing", 1);
                            mx mxVar2 = cbvVar.f12615d;
                            String str = cbvVar.f12613b.afmaVersion;
                            mxVar2.getClass();
                            mx.n(context, str, bundle, new bli(mxVar2));
                        }
                    }
                    if (obj == null) {
                        if (drfVar != null) {
                            try {
                                obj3 = f(drfVar);
                            } catch (RemoteException unused2) {
                                zzfxd zzfxdVar2 = agd.f10175a;
                            }
                        } else {
                            agd.b("ClientApi class cannot be loaded.");
                        }
                        obj2 = obj3;
                    } else {
                        obj2 = obj;
                    }
                } else {
                    if (drfVar != null) {
                        try {
                            obj2 = f(drfVar);
                        } catch (RemoteException unused3) {
                            zzfxd zzfxdVar3 = agd.f10175a;
                        }
                        if (obj2 == null && !z2) {
                            try {
                                obj3 = g();
                            } catch (RemoteException unused4) {
                                zzfxd zzfxdVar4 = agd.f10175a;
                            }
                            obj2 = obj3;
                        }
                    } else {
                        agd.b("ClientApi class cannot be loaded.");
                    }
                    obj2 = null;
                    if (obj2 == null) {
                        obj3 = g();
                        obj2 = obj3;
                    }
                }
                return obj2 != null ? e() : obj2;
            }
            z3 = z | z4;
        }
        z2 = false;
        drf drfVar2 = i;
        Object obj32 = null;
        if (z3) {
        }
        if (obj2 != null) {
        }
    }
}
