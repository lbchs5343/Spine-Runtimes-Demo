package g;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class eyh extends dlv {
    protected List<dlv> dq;

    public eyh(Context context) {
        super(context, 0);
        this.dq = new ArrayList();
    }

    @Override // g.dlv
    public dlv d(String str) {
        dlv p;
        if (!TextUtils.isEmpty(str) && TextUtils.equals(str, this.jy)) {
            return this;
        }
        for (dlv dlvVar : this.dq) {
            if (dlvVar != null && (p = dlvVar.p(str)) != null) {
                return p;
            }
        }
        return null;
    }

    public List<dlv> d() {
        return this.dq;
    }

    @Override // g.dlv
    public dlv dq(String str) {
        dlv ox;
        if (!TextUtils.isEmpty(str) && TextUtils.equals(str, this.q)) {
            return this;
        }
        for (dlv dlvVar : this.dq) {
            if (dlvVar != null && (ox = dlvVar.ox(str)) != null) {
                return ox;
            }
        }
        return null;
    }

    public ewk dq() {
        return new ewk(this);
    }

    public void dq(dlv dlvVar) {
        if (dlvVar == null) {
            return;
        }
        this.dq.add(dlvVar);
        View kk = dlvVar.kk();
        if (kk != null) {
            ((ViewGroup) this.ia).addView(kk);
        }
    }

    public void dq(dlv dlvVar, ViewGroup.LayoutParams layoutParams) {
        if (dlvVar == null) {
            return;
        }
        this.dq.add(dlvVar);
        View kk = dlvVar.kk();
        if (kk != null) {
            ((ViewGroup) this.ia).addView(kk, layoutParams);
        }
    }
}
