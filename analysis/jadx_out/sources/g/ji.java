package g;

import a.v.ScrollViewWithMaxHeight;
import android.os.Bundle;
import android.view.View;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public abstract class ji extends dms implements View.OnClickListener, cgm {

    /* renamed from: d, reason: collision with root package name */
    public ji f19482d;

    /* renamed from: e, reason: collision with root package name */
    public fei f19483e;

    @Override // g.cgm
    public final void f() {
    }

    @Override // g.cgm
    public final void g() {
    }

    @Override // g.cgm
    public final void h(String str) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f19483e.b()) {
            view.getId();
        }
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        double d2;
        double d3;
        Bundle extras;
        requestWindowFeature(1);
        super.onCreate(bundle);
        setContentView(R.layout.activity_p_bp);
        this.f19482d = this;
        ScrollViewWithMaxHeight scrollViewWithMaxHeight = (ScrollViewWithMaxHeight) findViewById(R.id.desc_layout);
        int[] ag = fso.ag(this.f19482d);
        int i = ag[0];
        int i2 = ag[1];
        if (i > i2) {
            d2 = i2;
            d3 = 3.5d;
        } else {
            d2 = i2;
            d3 = 5.5d;
        }
        scrollViewWithMaxHeight.setMaxHeight((int) ((d2 * d3) / 9.0d));
        scrollViewWithMaxHeight.setVerticalScrollBarEnabled(true);
        if (getIntent() == null || (extras = getIntent().getExtras()) == null) {
            return;
        }
        extras.getString("donation_package_name");
        this.f19483e = new fei();
    }
}
