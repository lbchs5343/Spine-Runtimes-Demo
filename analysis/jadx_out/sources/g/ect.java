package g;

/* loaded from: classes.dex */
public abstract class ect extends androidx.recyclerview.widget.m {
    public fsz i;

    @Override // androidx.recyclerview.widget.m
    public void onBindViewHolder(androidx.recyclerview.widget.p pVar, int i) {
        if (this.i != null) {
            pVar.n.setOnClickListener(new eoh(this, 0, pVar));
            pVar.n.setOnLongClickListener(new bxa(this, pVar));
        } else {
            pVar.n.setOnClickListener(null);
            pVar.n.setOnLongClickListener(null);
        }
    }
}
