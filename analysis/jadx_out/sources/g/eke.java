package g;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController$RecycleListView;

/* loaded from: classes.dex */
public final class eke implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ die f15698a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AlertController$RecycleListView f15699b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ bgn f15700c;

    public eke(die dieVar, AlertController$RecycleListView alertController$RecycleListView, bgn bgnVar) {
        this.f15698a = dieVar;
        this.f15699b = alertController$RecycleListView;
        this.f15700c = bgnVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        die dieVar = this.f15698a;
        boolean[] zArr = dieVar.j;
        AlertController$RecycleListView alertController$RecycleListView = this.f15699b;
        if (zArr != null) {
            zArr[i] = alertController$RecycleListView.isItemChecked(i);
        }
        dieVar.f14219d.onClick(this.f15700c.x, i, alertController$RecycleListView.isItemChecked(i));
    }
}
