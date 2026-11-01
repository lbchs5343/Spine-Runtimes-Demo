package g;

import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Handler;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes.dex */
public final /* synthetic */ class bf implements bky {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11424a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11425b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContextWrapper f11426c;

    public /* synthetic */ bf(ContextWrapper contextWrapper, int i, int i2) {
        this.f11424a = i2;
        this.f11426c = contextWrapper;
        this.f11425b = i;
    }

    @Override // g.bky
    public final void d(he heVar, boolean z) {
        int i = this.f11424a;
        int i2 = R.string.shizuku_capture_failed;
        switch (i) {
            case 0:
                ka kaVar = (ka) this.f11426c;
                if (this.f11425b == kaVar.o && kaVar.f19527g) {
                    if (heVar != null) {
                        if (!dyd.aa() && eyt.am(kaVar, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                            long currentTimeMillis = System.currentTimeMillis();
                            kaVar.f19525e = currentTimeMillis;
                            kaVar.startActivity(new Intent(kaVar, (Class<?>) a.v.b.class).setFlags(C.ENCODING_PCM_MU_LAW).putExtra(ekq.EXTRA_PERMISSION_NAME, "android.permission.WRITE_EXTERNAL_STORAGE").putExtra(ekq.EXTRA_PERMISSION_SEQ_ID, currentTimeMillis));
                            break;
                        } else {
                            kaVar.aa(heVar);
                            break;
                        }
                    } else {
                        ka kaVar2 = kaVar.p;
                        Handler handler = bew.f11418f;
                        if (!z) {
                            i2 = R.string.li_export_no;
                        }
                        gm.f(kaVar2, i2);
                        break;
                    }
                }
                break;
            default:
                edx edxVar = (edx) this.f11426c;
                int i3 = this.f11425b;
                if (!edxVar.isFinishing() && !edxVar.isDestroyed() && i3 == edxVar.s) {
                    edxVar.u = false;
                    if (heVar == null) {
                        if (z) {
                            eib eibVar = edxVar.bc;
                            Handler handler2 = bew.f11418f;
                            gm.f(eibVar, R.string.shizuku_capture_failed);
                        }
                        if (edxVar.f15387f != null && edxVar.an()) {
                            edxVar.at();
                            break;
                        }
                    } else {
                        edxVar.aw(heVar);
                        break;
                    }
                }
                break;
        }
    }
}
