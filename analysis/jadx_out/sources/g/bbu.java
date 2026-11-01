package g;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzbcq;
import com.google.android.gms.internal.ads.zzbct;
import com.google.android.gms.internal.ads.zzbzz;
import com.google.android.gms.internal.ads.zzfxd;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class bbu extends bgf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11242a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f11243b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bbu(int i, Object obj) {
        super(7);
        this.f11242a = i;
        this.f11243b = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bbu(Context context) {
        super(7);
        this.f11242a = 1;
        this.f11243b = context;
    }

    private final void c() {
        boolean z;
        try {
            z = xo.j((Context) this.f11243b);
        } catch (ctc | IOException | IllegalStateException e2) {
            agd.f("Fail to get isAdIdFakeForDebugLogging", e2);
            z = false;
        }
        synchronized (dzz.f15159c) {
            dzz.f15160d = true;
            dzz.f15157a = z;
        }
        agd.b("Update ad debug logging enablement as " + z);
    }

    @Override // g.bgf
    public final void zza() {
        BitmapDrawable bitmapDrawable;
        switch (this.f11242a) {
            case 0:
                zzbzz zzbzzVar = (zzbzz) this.f11243b;
                zzbcq zzbcqVar = new zzbcq(zzbzzVar.f5111g, zzbzzVar.i.afmaVersion);
                synchronized (((zzbzz) this.f11243b).h) {
                    try {
                        zzbct zzbctVar = ti.f20033a.j;
                        zzbct.zza(((zzbzz) this.f11243b).f5105a, zzbcqVar);
                    } catch (IllegalArgumentException unused) {
                        zzfxd zzfxdVar = agd.f10175a;
                    }
                }
                return;
            case 1:
                c();
                return;
            default:
                cwg cwgVar = (cwg) this.f11243b;
                dcq dcqVar = ti.f20033a.o;
                Bitmap bitmap = (Bitmap) ((ConcurrentHashMap) dcqVar.f13976f).get(Integer.valueOf(cwgVar.u.zzo.zzf));
                if (bitmap != null) {
                    fbp fbpVar = cwgVar.u.zzo;
                    boolean z = fbpVar.zzd;
                    float f2 = fbpVar.zze;
                    Activity activity = cwgVar.s;
                    if (!z || f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || f2 > 25.0f) {
                        bitmapDrawable = new BitmapDrawable(activity.getResources(), bitmap);
                    } else {
                        try {
                            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), false);
                            Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap);
                            RenderScript create = RenderScript.create(activity);
                            ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
                            Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
                            Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
                            create2.setRadius(f2);
                            create2.setInput(createFromBitmap);
                            create2.forEach(createFromBitmap2);
                            createFromBitmap2.copyTo(createBitmap);
                            bitmapDrawable = new BitmapDrawable(activity.getResources(), createBitmap);
                        } catch (RuntimeException unused2) {
                            bitmapDrawable = new BitmapDrawable(activity.getResources(), bitmap);
                        }
                    }
                    esy.f16117a.post(new fuy(this, 11, bitmapDrawable));
                    return;
                }
                return;
        }
    }
}
