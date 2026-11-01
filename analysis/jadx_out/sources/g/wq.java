package g;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class wq {

    /* renamed from: a, reason: collision with root package name */
    public SparseArray f20231a;

    /* renamed from: b, reason: collision with root package name */
    public SparseArray f20232b;

    /* renamed from: c, reason: collision with root package name */
    public dms f20233c;

    /* renamed from: d, reason: collision with root package name */
    public View.OnClickListener f20234d;

    /* renamed from: e, reason: collision with root package name */
    public dms f20235e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f20236f;

    /* renamed from: g, reason: collision with root package name */
    public View.OnLongClickListener f20237g;

    public final void h() {
        dms dmsVar = this.f20235e;
        Toolbar toolbar = (Toolbar) dmsVar.findViewById(R.id.toolbar);
        if (toolbar != null) {
            dmsVar.setSupportActionBar(toolbar);
            fso.av(toolbar, true);
        }
        if (dmsVar.getSupportActionBar() != null) {
            dmsVar.getSupportActionBar().ai(this.f20233c.isDisplayHomeAsUpEnabled());
        }
        if (toolbar != null) {
            View.OnClickListener onClickListener = this.f20234d;
            if (onClickListener != null) {
                toolbar.setOnClickListener(onClickListener);
            }
            View.OnLongClickListener onLongClickListener = this.f20237g;
            if (onLongClickListener != null) {
                toolbar.setOnLongClickListener(onLongClickListener);
            }
        }
        View findViewById = dmsVar.findViewById(android.R.id.content);
        if (findViewById == null || !(findViewById instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) findViewById;
        if (viewGroup.getChildCount() > 0) {
            fso.av(viewGroup.getChildAt(0), false);
        }
    }
}
