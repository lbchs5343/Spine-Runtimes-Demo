package g;

import android.view.View;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class hcs implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19231a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19232b;

    public /* synthetic */ hcs(int i, Object obj) {
        this.f19231a = i;
        this.f19232b = obj;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.f19231a) {
            case 0:
                amy amyVar = (amy) this.f19232b;
                fso.ae(amyVar.f10501e, "", eyt.bp(amyVar.f10502f), true);
                return true;
            default:
                fvy fvyVar = (fvy) this.f19232b;
                fvyVar.h.setVisibility(0);
                fvyVar.l.setText(R.string.pay_with_googleplay);
                return false;
        }
    }
}
