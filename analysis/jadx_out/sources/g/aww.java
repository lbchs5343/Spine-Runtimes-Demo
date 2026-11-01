package g;

import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.HashSet;

/* loaded from: classes3.dex */
public final /* synthetic */ class aww implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f11004a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11005b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f11006c;

    public /* synthetic */ aww(Object obj, int i, Object obj2) {
        this.f11005b = i;
        this.f11006c = obj;
        this.f11004a = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f11005b) {
            case 0:
                cyz cyzVar = (cyz) this.f11006c;
                daa daaVar = (daa) this.f11004a;
                cyzVar.x = !cyzVar.x;
                daaVar.run();
                break;
            case 1:
                amy amyVar = (amy) this.f11006c;
                String str = (String) this.f11004a;
                HashSet hashSet = amyVar.n;
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) amyVar.m.getLayoutManager();
                int i = 0;
                while (true) {
                    if (i < acw.bo(amyVar.f10500d.f13943c)) {
                        cng f2 = amyVar.f10500d.f(i);
                        if (!(f2 instanceof dpj) || !str.equals(((dpj) f2).f12721a)) {
                            i++;
                        }
                    } else {
                        i = 0;
                    }
                }
                View cz = linearLayoutManager.cz(i);
                int max = cz != null ? Math.max(0, cz.getTop() - amyVar.m.getPaddingTop()) : 0;
                if (!hashSet.add(str)) {
                    hashSet.remove(str);
                }
                amyVar.f10503g.i();
                amyVar.f10500d.h(amyVar.p());
                amyVar.f10500d.notifyDataSetChanged();
                linearLayoutManager.bw(i, max);
                amyVar.f10503g = new ebw(amyVar.m, (TextView) amyVar.findViewById(R.id.pinned_section_title), amyVar.f10500d.f13943c, new aoi(1, amyVar));
                break;
            case 2:
                bau bauVar = (bau) this.f11006c;
                auj aujVar = (auj) this.f11004a;
                efx efxVar = bauVar.f13438e;
                String str2 = aujVar.h;
                if (fnp.m()) {
                    try {
                        try {
                            Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
                            intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
                            intent.putExtra("extra_pkgname", str2);
                            intent.addFlags(C.ENCODING_PCM_MU_LAW);
                            efxVar.startActivity(intent);
                            break;
                        } catch (Exception unused) {
                            Intent intent2 = new Intent("miui.intent.action.APP_PERM_EDITOR");
                            intent2.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
                            intent2.putExtra("extra_pkgname", str2);
                            intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                            efxVar.startActivity(intent2);
                            return;
                        }
                    } catch (Exception unused2) {
                        eyt.bv(efxVar, str2);
                        return;
                    }
                }
                break;
            case 3:
                sd sdVar = (sd) this.f11006c;
                View.OnClickListener onClickListener = (View.OnClickListener) this.f11004a;
                sdVar.getClass();
                onClickListener.onClick(view);
                sdVar.ak(1);
                break;
            default:
                c.a.a aVar = (c.a.a) this.f11006c;
                fgj.e().f(aVar, aVar.getPackageManager().getLaunchIntentForPackage(((gzr) this.f11004a).f19066c));
                break;
        }
    }
}
