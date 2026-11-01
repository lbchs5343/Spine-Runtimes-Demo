package b.d;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.bys;
import g.dxn;
import g.fzn;

/* loaded from: classes.dex */
public class c extends dxn {
    @Override // g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_o);
        Intent intent = getIntent();
        if (intent != null) {
            String action = intent.getAction();
            if (TextUtils.isEmpty(action)) {
                return;
            }
            if (action.equals("op_update_noti")) {
                bys.d(this, "op_source_noti_update");
            } else if ("c.t.d.t.c.e".equals(action) || "c.t.d.l.v.e".equals(action)) {
                fzn.l(this).q(new Intent(action));
                finish();
            }
        }
    }
}
