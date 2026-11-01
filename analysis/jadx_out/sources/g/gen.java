package g;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* loaded from: classes.dex */
public final class gen implements uw, DialogInterface.OnClickListener {
    public CharSequence l;
    public final /* synthetic */ erv m;
    public fpl n;
    public brk o;

    public gen(erv ervVar) {
        this.m = ervVar;
    }

    @Override // g.uw
    public final void _cg(CharSequence charSequence) {
        this.l = charSequence;
    }

    @Override // g.uw
    public final void a(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // g.uw
    public final void b(int i, int i2) {
        if (this.o == null) {
            return;
        }
        erv ervVar = this.m;
        gqc gqcVar = new gqc(ervVar.getPopupContext());
        die dieVar = (die) gqcVar.z;
        CharSequence charSequence = this.l;
        if (charSequence != null) {
            dieVar.f14221f = charSequence;
        }
        brk brkVar = this.o;
        int selectedItemPosition = ervVar.getSelectedItemPosition();
        dieVar.t = brkVar;
        dieVar.y = this;
        dieVar.w = selectedItemPosition;
        dieVar.l = true;
        fpl r = gqcVar.r();
        this.n = r;
        AlertController$RecycleListView alertController$RecycleListView = r.j.s;
        alertController$RecycleListView.setTextDirection(i);
        alertController$RecycleListView.setTextAlignment(i2);
        this.n.show();
    }

    @Override // g.uw
    public final CharSequence c() {
        return this.l;
    }

    @Override // g.uw
    public final int d() {
        return 0;
    }

    @Override // g.uw
    public final void dismiss() {
        fpl fplVar = this.n;
        if (fplVar != null) {
            fplVar.dismiss();
            this.n = null;
        }
    }

    @Override // g.uw
    public final Drawable e() {
        return null;
    }

    @Override // g.uw
    public final int f() {
        return 0;
    }

    @Override // g.uw
    public final void h(ListAdapter listAdapter) {
        this.o = (brk) listAdapter;
    }

    @Override // g.uw
    public final void i(int i) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // g.uw
    public final boolean isShowing() {
        fpl fplVar = this.n;
        if (fplVar != null) {
            return fplVar.isShowing();
        }
        return false;
    }

    @Override // g.uw
    public final void j(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // g.uw
    public final void k(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        erv ervVar = this.m;
        ervVar.setSelection(i);
        if (ervVar.getOnItemClickListener() != null) {
            ervVar.performItemClick(null, i, this.o.getItemId(i));
        }
        dismiss();
    }
}
