package g;

import android.content.Intent;
import android.net.Uri;
import android.os.Message;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.gms.internal.ads.zzbse;

/* loaded from: classes3.dex */
public final class get implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18001a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f18002b;

    public /* synthetic */ get(int i, Object obj) {
        this.f18001a = i;
        this.f18002b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Message message;
        Message message2;
        Message message3;
        Intent flags;
        switch (this.f18001a) {
            case 0:
                evr evrVar = (evr) this.f18002b;
                evrVar.aq.aa(evrVar);
                break;
            case 1:
                ((gtg) this.f18002b).m();
                break;
            case 2:
                bgn bgnVar = (bgn) this.f18002b;
                Message obtain = (view != bgnVar.y || (message3 = bgnVar.k) == null) ? (view != bgnVar.v || (message2 = bgnVar.f11526e) == null) ? (view != bgnVar.u || (message = bgnVar.ah) == null) ? null : Message.obtain(message) : Message.obtain(message2) : Message.obtain(message3);
                if (obtain != null) {
                    obtain.sendToTarget();
                }
                bgnVar.f11528g.obtainMessage(1, bgnVar.x).sendToTarget();
                break;
            case 3:
                ajf ajfVar = (ajf) this.f18002b;
                InputMethodManager inputMethodManager = ajfVar.f10302b;
                if (inputMethodManager != null) {
                    inputMethodManager.showSoftInput(ajfVar.f10306f, 0);
                    break;
                }
                break;
            case 4:
                RecyclerView recyclerView = ((amy) this.f18002b).m;
                if (recyclerView != null) {
                    recyclerView.scrollToPosition(0);
                    break;
                }
                break;
            case 5:
                efx efxVar = (efx) this.f18002b;
                InputMethodManager inputMethodManager2 = efxVar.be;
                if (inputMethodManager2 != null) {
                    inputMethodManager2.showSoftInput(efxVar.an, 0);
                    break;
                }
                break;
            case 6:
                baq baqVar = (baq) this.f18002b;
                if (baqVar.w() && !bfc.ac(baqVar.bc)) {
                    baqVar.aq();
                    break;
                }
                break;
            case 7:
                elf elfVar = (elf) this.f18002b;
                cro.af(elfVar.aa, "rated", true);
                elf elfVar2 = elfVar.aa;
                eyt.ag(elfVar2, elfVar2.getPackageName(), eyt.ax(elfVar2), true);
                break;
            case 8:
                ((dmr) ((aco) ((emr) ((eie) this.f18002b).f15585g).n).f9979b).f14436a.k(new evf(12, this));
                break;
            case 9:
                elf elfVar3 = ((dmr) this.f18002b).f14439d;
                String charSequence = elfVar3.getText(R.string.donation_package_name).toString();
                fgj e2 = fgj.e();
                if (eyt.ab(elfVar3, "com.android.vending", true)) {
                    flags = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + charSequence)).setPackage("com.android.vending").setFlags(C.ENCODING_PCM_MU_LAW);
                } else {
                    flags = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + charSequence)).setFlags(C.ENCODING_PCM_MU_LAW);
                }
                e2.g(elfVar3, flags, false, false, true);
                break;
            case 10:
                ebb ebbVar = (ebb) this.f18002b;
                fxs fxsVar = ebbVar.s;
                fxs fxsVar2 = fxs.YEAR;
                if (fxsVar != fxsVar2) {
                    if (fxsVar == fxs.DAY) {
                        ebbVar.v(fxsVar2);
                        ebbVar.f15219f.announceForAccessibility(ebbVar.getString(R.string.mtrl_picker_toggled_to_year_selection));
                        break;
                    }
                } else {
                    ebbVar.v(fxs.DAY);
                    ebbVar.o.announceForAccessibility(ebbVar.getString(R.string.mtrl_picker_toggled_to_day_selection));
                    break;
                }
                break;
            case 11:
                ((fpl) this.f18002b).cancel();
                break;
            case 12:
                edx edxVar = (edx) this.f18002b;
                if (edxVar.w() && !bfc.ac(edxVar.bc)) {
                    edxVar.ap();
                    break;
                }
                break;
            case 13:
                glz glzVar = ((Toolbar) this.f18002b).ak;
                far farVar = glzVar == null ? null : glzVar.k;
                if (farVar != null) {
                    farVar.collapseActionView();
                    break;
                }
                break;
            case 14:
                ((c.a.a) this.f18002b).w();
                break;
            case 15:
                drp.f14674a = true;
                ((drp) this.f18002b).l();
                break;
            case 16:
                ((zzbse) this.f18002b).zza(true);
                break;
            default:
                cwg cwgVar = (cwg) this.f18002b;
                cwgVar.f13627g = 2;
                cwgVar.s.finish();
                break;
        }
    }
}
