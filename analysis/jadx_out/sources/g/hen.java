package g;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class hen extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f19340a;

    /* renamed from: b, reason: collision with root package name */
    public final LayoutInflater f19341b;

    /* renamed from: c, reason: collision with root package name */
    public final ftn f19342c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19343d;

    /* renamed from: e, reason: collision with root package name */
    public int f19344e = -1;

    /* renamed from: f, reason: collision with root package name */
    public boolean f19345f;

    public hen(ftn ftnVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.f19340a = z;
        this.f19341b = layoutInflater;
        this.f19342c = ftnVar;
        this.f19343d = i;
        g();
    }

    public final void g() {
        ftn ftnVar = this.f19342c;
        far farVar = ftnVar.k;
        if (farVar != null) {
            ftnVar.ao();
            ArrayList arrayList = ftnVar.s;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((far) arrayList.get(i)) == farVar) {
                    this.f19344e = i;
                    return;
                }
            }
        }
        this.f19344e = -1;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList ae;
        boolean z = this.f19340a;
        ftn ftnVar = this.f19342c;
        if (z) {
            ftnVar.ao();
            ae = ftnVar.s;
        } else {
            ae = ftnVar.ae();
        }
        return this.f19344e < 0 ? ae.size() : ae.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        boolean z = false;
        if (view == null) {
            view = this.f19341b.inflate(this.f19343d, viewGroup, false);
        }
        int i2 = getItem(i).w;
        int i3 = i - 1;
        int i4 = i3 >= 0 ? getItem(i3).w : i2;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f19342c.an() && i2 != i4) {
            z = true;
        }
        listMenuItemView.setGroupDividerEnabled(z);
        ebq ebqVar = (ebq) view;
        if (this.f19345f) {
            listMenuItemView.setForceShowIcon(true);
        }
        ebqVar.p(getItem(i));
        return view;
    }

    @Override // android.widget.Adapter
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final far getItem(int i) {
        ArrayList ae;
        boolean z = this.f19340a;
        ftn ftnVar = this.f19342c;
        if (z) {
            ftnVar.ao();
            ae = ftnVar.s;
        } else {
            ae = ftnVar.ae();
        }
        int i2 = this.f19344e;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (far) ae.get(i);
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        g();
        super.notifyDataSetChanged();
    }
}
