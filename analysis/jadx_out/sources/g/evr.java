package g;

import android.view.View;
import android.widget.CheckBox;
import cn.trinea.android.developertools.R;
import java.io.File;

/* loaded from: classes3.dex */
public final class evr extends amu {
    public final /* synthetic */ cuz aq;
    public final CheckBox ar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public evr(cuz cuzVar, View view) {
        super(cuzVar, view);
        this.aq = cuzVar;
        boolean z = cuzVar.k == 3;
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.checkbox);
        this.ar = checkBox;
        checkBox.setVisibility((z || cuzVar.f13566f) ? 8 : 0);
        checkBox.setOnClickListener(new get(0, this));
    }

    @Override // g.amu, android.view.View.OnClickListener
    public final void onClick(View view) {
        cuz cuzVar = this.aq;
        cuzVar.getClass();
        if (((File) this.ak).isDirectory()) {
            cuzVar.ah(this.ak);
            return;
        }
        if (3 == cuzVar.k) {
            cuzVar.m.setText(((File) this.ak).getName());
        }
        cuzVar.aa(this);
        if (cuzVar.f13566f) {
            cuzVar.af();
        }
    }

    @Override // g.amu, android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        cuz cuzVar = this.aq;
        if (3 == cuzVar.k) {
            cuzVar.m.setText(((File) this.ak).getName());
        }
        cuzVar.aa(this);
        return true;
    }
}
