package g;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import java.util.List;

/* loaded from: classes.dex */
public final class fcz extends ect {

    /* renamed from: a, reason: collision with root package name */
    public final ctx f16585a;

    /* renamed from: b, reason: collision with root package name */
    public List f16586b;

    public fcz(ctx ctxVar, List list) {
        this.f16585a = ctxVar;
        this.f16586b = list;
    }

    @Override // androidx.recyclerview.widget.m
    public final int getItemCount() {
        return acw.bo(this.f16586b);
    }

    @Override // g.ect, androidx.recyclerview.widget.m
    public final void onBindViewHolder(androidx.recyclerview.widget.p pVar, int i) {
        super.onBindViewHolder(pVar, i);
        cgs cgsVar = (cgs) pVar;
        fwx fwxVar = (fwx) this.f16586b.get(i);
        Button button = cgsVar.ak;
        akf.k().l(fwxVar.getIconUrl()).d(cgsVar.al);
        cgsVar.ao.setText(fwxVar.getName());
        cgsVar.an.setText(fwxVar.getAttraction());
        if (fwxVar.getStatus() == 1) {
            button.setText(R.string.alliance_open);
            button.setOnClickListener(new ded(cgsVar, fwxVar, 0));
        } else if (fwxVar.getStatus() == 2) {
            button.setText(R.string.alliance_update);
            button.setOnClickListener(new ded(cgsVar, fwxVar, 1));
        } else {
            button.setText(R.string.alliance_install);
            button.setOnClickListener(new ded(cgsVar, fwxVar, 2));
        }
    }

    @Override // androidx.recyclerview.widget.m
    public final androidx.recyclerview.widget.p onCreateViewHolder(ViewGroup viewGroup, int i) {
        ctx ctxVar = this.f16585a;
        View inflate = LayoutInflater.from(ctxVar).inflate(R.layout.item_alliance, viewGroup, false);
        cgs cgsVar = new cgs(inflate);
        cgsVar.am = ctxVar;
        cgsVar.al = (ImageView) inflate.findViewById(R.id.icon);
        cgsVar.ao = (TextView) inflate.findViewById(R.id.name);
        cgsVar.an = (TextView) inflate.findViewById(R.id.desc);
        cgsVar.ak = (Button) inflate.findViewById(R.id.install);
        return cgsVar;
    }
}
