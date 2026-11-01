package g;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class fnr extends androidx.recyclerview.widget.m {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f17100a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public int f17101b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f17102c;

    /* renamed from: d, reason: collision with root package name */
    public final int f17103d;

    /* renamed from: e, reason: collision with root package name */
    public final csm f17104e;

    public fnr(Context context, int i, csm csmVar) {
        this.f17102c = context;
        this.f17103d = i;
        this.f17104e = csmVar;
    }

    public final void f(int i, View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i2 = this.f17101b;
        int i3 = this.f17103d;
        if (i2 <= 0 && i > 0) {
            i2 = Math.max(1, i / i3);
        }
        if (i2 <= 0) {
            i2 = Math.max(1, this.f17102c.getResources().getDisplayMetrics().widthPixels / i3);
        }
        if (layoutParams.width == i2 && layoutParams.height == -2) {
            return;
        }
        layoutParams.width = i2;
        layoutParams.height = -2;
        view.setLayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.m
    public final int getItemCount() {
        return this.f17100a.size();
    }

    @Override // androidx.recyclerview.widget.m
    public final void onBindViewHolder(androidx.recyclerview.widget.p pVar, int i) {
        bcq bcqVar = (bcq) pVar;
        View view = bcqVar.n;
        f(view.getParent() instanceof View ? ((View) view.getParent()).getWidth() : 0, view);
        auj aujVar = (auj) this.f17100a.get(i);
        csm csmVar = this.f17104e;
        if (csmVar != null) {
            csmVar.c(bcqVar, aujVar);
            bcqVar.am.setVisibility(8);
        } else {
            ((ImageView) view.findViewById(R.id.icon)).setImageDrawable(aujVar.l(this.f17102c, true));
            ((TextView) view.findViewById(R.id.name)).setText(aujVar.j);
            view.findViewById(R.id.desc).setVisibility(8);
        }
    }

    @Override // androidx.recyclerview.widget.m
    public final androidx.recyclerview.widget.p onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(this.f17102c).inflate(R.layout.item_app_vertical, viewGroup, false);
        inflate.setBackgroundResource(R.drawable.recent_app_item_background);
        f(viewGroup.getWidth(), inflate);
        return new bcq(inflate);
    }
}
