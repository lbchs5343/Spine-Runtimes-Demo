package g;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public class bvl extends cqo {

    /* renamed from: a, reason: collision with root package name */
    public eo f12271a;

    public final void b(View view, String str, String str2) {
        eo eoVar = this.f12271a;
        if (eoVar != null) {
            ((eku) eoVar).q((ViewGroup) view.findViewById(R.id.alayout), str, str2, false);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        eo eoVar = this.f12271a;
        if (eoVar != null) {
            ((eku) eoVar).p();
        }
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public final void onPause() {
        eo eoVar = this.f12271a;
        if (eoVar != null) {
            eoVar.getClass();
        }
        super.onPause();
    }

    @Override // android.app.Fragment
    public final void onResume() {
        try {
            super.onResume();
        } catch (IllegalArgumentException e2) {
            erl.ac(e2);
        }
        eo eoVar = this.f12271a;
        if (eoVar != null) {
            eoVar.getClass();
        }
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        try {
            boolean z = eku.f15714e;
            this.f12271a = (eo) eku.class.getConstructor(dms.class).newInstance(getActivity());
        } catch (Exception e2) {
            if (byh.bc()) {
                gm.d(getActivity(), "ads is null", 0);
            } else {
                erl.ai("ads is null", e2);
            }
        }
    }
}
