package g;

import android.view.View;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import java.io.File;

/* loaded from: classes3.dex */
public class amu extends androidx.recyclerview.widget.p implements View.OnClickListener, View.OnLongClickListener {
    public Object ak;
    public final TextView al;
    public final View am;
    public final /* synthetic */ cuz an;
    public final TextView ao;
    public final TextView ap;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public amu(cuz cuzVar, View view) {
        super(view);
        this.an = cuzVar;
        view.setOnClickListener(this);
        view.setOnLongClickListener(this);
        this.am = view.findViewById(R.id.item_icon);
        this.al = (TextView) view.findViewById(R.id.name);
        this.ap = (TextView) view.findViewById(R.id.size);
        this.ao = (TextView) view.findViewById(R.id.nnf_secondary_details);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        cuz cuzVar = this.an;
        cuzVar.getClass();
        if (((File) this.ak).isDirectory()) {
            cuzVar.ah(this.ak);
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.an.getClass();
        return false;
    }
}
