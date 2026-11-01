package g;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ComponentInfo;
import android.net.Uri;
import android.webkit.JsPromptResult;
import androidx.appcompat.widget.SwitchCompat;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.gms.internal.ads.zzbsh;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class fgw implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16768a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16769b;

    public /* synthetic */ fgw(int i, Object obj) {
        this.f16768a = i;
        this.f16769b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f16768a) {
            case 0:
                ern.g(((eib) this.f16769b).bc);
                synchronized (eib.class) {
                    ((eib) this.f16769b).ay = true;
                }
                return;
            case 1:
                anh anhVar = (anh) this.f16769b;
                Context context = (Context) anhVar.f10517c;
                brq brqVar = (brq) anhVar.f10515a;
                if (i == 0) {
                    Intent intent = new Intent();
                    ComponentInfo componentInfo = brqVar.f12087a;
                    intent.setClassName(componentInfo.packageName, componentInfo.name);
                    if (fgj.e().g((Context) anhVar.f10517c, intent.setFlags(C.ENCODING_PCM_MU_LAW), false, false, true)) {
                        return;
                    }
                    gm.f(context, brqVar.f12087a.exported ? R.string.start_activity_failed : R.string.open_failed_not_exported);
                    return;
                }
                if (i == 1) {
                    fso.ae(context, "", brqVar.f12087a.name, true);
                    return;
                }
                if (i != 2) {
                    return;
                }
                ComponentInfo componentInfo2 = brqVar.f12087a;
                fso.ae(context, "", componentInfo2.packageName + "/" + componentInfo2.name, true);
                return;
            case 2:
                fvy fvyVar = (fvy) this.f16769b;
                dzm.ao(fvyVar.f17495a, "tt_2_3_cft_d_b");
                ComponentCallbacks2 activity = fvyVar.getActivity();
                cgm cgmVar = (activity == null || !(activity instanceof cgm)) ? null : (cgm) activity;
                if (cgmVar != null) {
                    cgmVar.g();
                    return;
                } else {
                    gm.c(fvyVar.f17495a, R.string.payable_is_null);
                    erl.ai("p able is null in DVDialogFragment", new NullPointerException());
                    return;
                }
            case 3:
                ((elf) this.f16769b).finish();
                return;
            case 4:
                ((SwitchCompat) this.f16769b).setChecked(true);
                return;
            case 5:
                ((AtomicInteger) this.f16769b).set(i);
                return;
            case 6:
                ((gfk) this.f16769b).p();
                return;
            case 7:
                esy esyVar = ti.f20033a.z;
                esy.ai(((apf) this.f16769b).f10615c, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
                return;
            case 8:
                ((zzbsh) this.f16769b).zzh("User canceled the download.");
                return;
            default:
                ((JsPromptResult) this.f16769b).cancel();
                return;
        }
    }
}
