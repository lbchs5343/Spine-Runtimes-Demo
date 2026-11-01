package g;

import android.content.Intent;
import android.os.Bundle;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public abstract class ekq extends dms {
    public static final String ACTION_PERMISSION_RESULT_RECEIVER = "action_permissionResultReceiver";
    public static final String EXTRA_PERMISSION_NAME = "permissionName";
    public static final String EXTRA_PERMISSION_RESULT = "result";
    public static final String EXTRA_PERMISSION_SEQ_ID = "permissionSeqID";
    public static final String PERMISSION_RESULT_CANCEL = "cancel";
    public static final String PERMISSION_RESULT_OK = "ok";

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        setContentView(R.layout.activity_permission);
        Intent intent = getIntent();
        if (intent != null) {
            long longExtra = intent.getLongExtra(EXTRA_PERMISSION_SEQ_ID, -1L);
            if (longExtra != -1) {
                fyt.c(this, new String[]{intent.getStringExtra(EXTRA_PERMISSION_NAME)}, new fcd[]{new apc(this, longExtra)});
                return;
            }
        }
        finish();
    }
}
