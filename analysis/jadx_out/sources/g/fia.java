package g;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzfvg;
import com.google.android.gms.internal.ads.zzfvh;
import com.google.android.gms.internal.ads.zzfvi;
import com.google.android.gms.internal.ads.zzfvk;
import com.google.android.gms.internal.ads.zzfvo;
import com.google.android.gms.internal.ads.zzfvv;
import com.google.android.gms.internal.ads.zzfvx;
import com.google.android.gms.internal.ads.zzfxf;
import g.fia;
import g.fkk;
import g.fwu;
import j$.util.Collection;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes3.dex */
public final class fia {

    /* renamed from: c, reason: collision with root package name */
    public final fwu f16824c;

    /* renamed from: d, reason: collision with root package name */
    public final String f16825d;

    /* renamed from: b, reason: collision with root package name */
    public static final zzfvv f16823b = new zzfvv("OverlayDisplayService");

    /* renamed from: a, reason: collision with root package name */
    public static final Intent f16822a = new Intent("com.google.android.play.core.lmd.BIND_OVERLAY_DISPLAY_SERVICE").setPackage("com.android.vending");

    public fia(Context context) {
        if (zzfvx.zza(context)) {
            Context applicationContext = context.getApplicationContext();
            new Object() { // from class: com.google.android.gms.internal.ads.zzfuz
            };
            this.f16824c = new fwu(applicationContext, f16823b, f16822a);
        } else {
            this.f16824c = null;
        }
        this.f16825d = context.getPackageName();
    }

    public static void e(String str, Consumer consumer) {
        if (zzfxf.zzc(str).trim().isEmpty()) {
            return;
        }
        str.getClass();
        consumer.accept(str.trim());
    }

    public static boolean f(zzfvi zzfviVar, String str, List list) {
        if (Collection.b.stream(list).anyMatch(new Predicate() { // from class: com.google.android.gms.internal.ads.zzfva
            public final /* synthetic */ Predicate and(Predicate predicate) {
                return j$.util.function.m.$default$and(this, predicate);
            }

            public final /* synthetic */ Predicate negate() {
                return j$.util.function.m.$default$negate(this);
            }

            public final /* synthetic */ Predicate or(Predicate predicate) {
                return j$.util.function.m.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                zzfvv zzfvvVar = fia.f16823b;
                return !zzfxf.zzc((String) obj).trim().isEmpty();
            }
        })) {
            return true;
        }
        f16823b.zza(str, new Object[0]);
        zzfvg zzc = zzfvh.zzc();
        zzc.zzb(8160);
        zzfviVar.zza(zzc.zzc());
        return false;
    }

    public final void g(final zzfvk zzfvkVar, final zzfvi zzfviVar, final int i) {
        fwu fwuVar = this.f16824c;
        if (fwuVar == null) {
            f16823b.zza("error: %s", "Play Store not found.");
        } else if (f(zzfviVar, "Failed to apply OverlayDisplayUpdateRequest: missing appId and sessionToken.", Arrays.asList(zzfvkVar.zzb(), zzfvkVar.zza()))) {
            fwuVar.k(new zzfvo(fwuVar, new Runnable() { // from class: com.google.android.gms.internal.ads.zzfuv
                @Override // java.lang.Runnable
                public final void run() {
                    fia fiaVar = fia.this;
                    zzfvk zzfvkVar2 = zzfvkVar;
                    int i2 = i;
                    zzfvi zzfviVar2 = zzfviVar;
                    String str = fiaVar.f16825d;
                    try {
                        fwu fwuVar2 = fiaVar.f16824c;
                        if (fwuVar2 == null) {
                            throw null;
                        }
                        zzftu zzftuVar = fwuVar2.h;
                        if (zzftuVar == null) {
                            return;
                        }
                        final Bundle bundle = new Bundle();
                        bundle.putString("callerPackage", str);
                        bundle.putInt("displayMode", i2);
                        fia.e(zzfvkVar2.zzb(), new Consumer() { // from class: com.google.android.gms.internal.ads.zzfuo
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                zzfvv zzfvvVar = fia.f16823b;
                                bundle.putString("sessionToken", (String) obj);
                            }

                            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                                return j$.util.function.j.$default$andThen(this, consumer);
                            }
                        });
                        fia.e(zzfvkVar2.zza(), new Consumer() { // from class: com.google.android.gms.internal.ads.zzfuu
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                zzfvv zzfvvVar = fia.f16823b;
                                bundle.putString("appId", (String) obj);
                            }

                            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                                return j$.util.function.j.$default$andThen(this, consumer);
                            }
                        });
                        zzftuVar.zzg(bundle, new fkk(fiaVar, zzfviVar2));
                    } catch (RemoteException e2) {
                        fia.f16823b.zzb(e2, "switchDisplayMode overlay display to %d from: %s", Integer.valueOf(i2), str);
                    }
                }
            }));
        }
    }
}
