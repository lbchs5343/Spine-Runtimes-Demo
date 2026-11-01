package g;

import android.annotation.TargetApi;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import androidx.fragment.app.Fragment;
import cn.trinea.android.developertools.R;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;

/* loaded from: classes3.dex */
public abstract class eso extends dms implements gaf {
    public static final String EXTRA_ALLOW_CREATE_DIR = "nononsense.intent.ALLOW_CREATE_DIR";
    public static final String EXTRA_ALLOW_EXISTING_FILE = "android.intent.extra.ALLOW_EXISTING_FILE";
    public static final String EXTRA_ALLOW_MULTIPLE = "android.intent.extra.ALLOW_MULTIPLE";
    public static final String EXTRA_MODE = "nononsense.intent.MODE";
    public static final String EXTRA_PATHS = "nononsense.intent.PATHS";
    public static final String EXTRA_SINGLE_CLICK = "nononsense.intent.SINGLE_CLICK";
    public static final String EXTRA_START_PATH = "nononsense.intent.START_PATH";
    public static final int MODE_DIR = 1;
    public static final int MODE_FILE = 0;
    public static final int MODE_FILE_AND_DIR = 2;
    public static final int MODE_NEW_FILE = 3;
    protected static final String TAG = "filepicker_fragment";
    private Context context;
    protected String startPath = null;
    protected int mode = 0;
    protected boolean allowCreateDir = false;
    protected boolean allowMultiple = false;
    private boolean allowExistingFile = true;
    protected boolean singleClick = true;

    public final boolean e() {
        Fragment bc = getSupportFragmentManager().bc(TAG);
        if (bc instanceof cuz) {
            cuz cuzVar = (cuz) bc;
            Stack stack = cuzVar.n;
            Object pop = (stack == null || stack.isEmpty()) ? null : stack.pop();
            if (pop != null) {
                cuzVar.al(pop, false);
                return true;
            }
        }
        return false;
    }

    public abstract cuz getFragment(String str, int i, boolean z, boolean z2, boolean z3, boolean z4);

    @Override // g.dms, g.aa
    public boolean isDisplayHomeAsUpEnabled() {
        return !isTaskRoot();
    }

    @Override // g.dms, g.aa
    public boolean isEnterLeaveAnim() {
        return !isTaskRoot();
    }

    @Override // g.gaf
    public void onCancelled() {
        setResult(0);
        finish();
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.nnf_activity_filepicker);
        this.context = this;
        Intent intent = getIntent();
        this.allowCreateDir = intent.getBooleanExtra(EXTRA_ALLOW_CREATE_DIR, this.allowCreateDir);
        this.allowMultiple = intent.getBooleanExtra(EXTRA_ALLOW_MULTIPLE, false);
        this.allowExistingFile = intent.getBooleanExtra(EXTRA_ALLOW_EXISTING_FILE, this.allowExistingFile);
        boolean booleanExtra = intent.getBooleanExtra(EXTRA_SINGLE_CLICK, !this.allowMultiple);
        this.singleClick = booleanExtra;
        if (booleanExtra && this.allowMultiple) {
            throw new IllegalArgumentException("onCreate 'singleClick' can not be used with 'allowMultiple'");
        }
        Uri data = intent.getData();
        if (data != null) {
            this.startPath = data.toString();
        } else {
            this.startPath = intent.getStringExtra(EXTRA_START_PATH);
            this.mode = intent.getIntExtra(EXTRA_MODE, this.mode);
        }
        setResult(0);
        getOnBackPressedDispatcher().i(this, new bcn(1, this));
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.file, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // g.gaf
    public void onFilePicked(Uri uri) {
        if (uri == null) {
            gm.e(this, R.string.error_no_file);
            return;
        }
        gqc gqcVar = new gqc(this);
        die dieVar = (die) gqcVar.z;
        dieVar.f14221f = buj.x(uri.getPath());
        String path = uri.getPath();
        boolean z = false;
        if (path != null && (path.endsWith(".so") || path.endsWith(".apk") || path.endsWith(".jar"))) {
            z = true;
        }
        if (dyd.bi(this.context) && z) {
            gqcVar.aw(R.array.file_operation_gp, new aiw(this, uri, 0));
        } else {
            gqcVar.aw(R.array.file_operation, new aiw(this, uri, 1));
        }
        dieVar.f14220e = new du(0, this);
        gqcVar.ak();
    }

    @Override // g.gaf
    @TargetApi(16)
    public void onFilesPicked(List<Uri> list) {
        Intent intent = new Intent();
        intent.putExtra(EXTRA_ALLOW_MULTIPLE, true);
        intent.putExtra(EXTRA_SINGLE_CLICK, false);
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Uri> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().toString());
        }
        intent.putStringArrayListExtra(EXTRA_PATHS, arrayList);
        ClipData clipData = null;
        for (Uri uri : list) {
            if (clipData == null) {
                clipData = new ClipData("Paths", new String[0], new ClipData.Item(uri));
            } else {
                clipData.addItem(new ClipData.Item(uri));
            }
        }
        intent.setClipData(clipData);
        setResult(-1, intent);
        finish();
    }

    @Override // g.ub, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && e()) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // g.dms, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (!this.clickInterval.b()) {
            return super.onOptionsItemSelected(menuItem);
        }
        int itemId = menuItem.getItemId();
        if (itemId == R.id.open_with_other_app) {
            Fragment bc = getSupportFragmentManager().bc(TAG);
            if (bc != null && (bc instanceof cuz)) {
                baf.ap(this.context, ((File) ((cuz) bc).o).getPath(), false);
                return true;
            }
        } else {
            if (itemId != R.id.copy_path) {
                return super.onOptionsItemSelected(menuItem);
            }
            Fragment bc2 = getSupportFragmentManager().bc(TAG);
            if (bc2 != null && (bc2 instanceof cuz)) {
                fso.ae(this.context, "", ((File) ((cuz) bc2).o).getPath(), true);
            }
        }
        return true;
    }

    @Override // g.dms, androidx.fragment.app.u, android.app.Activity
    public void onResume() {
        super.onResume();
        androidx.fragment.app.v supportFragmentManager = getSupportFragmentManager();
        Fragment bc = supportFragmentManager.bc(TAG);
        if (bc == null) {
            bc = getFragment(this.startPath, this.mode, this.allowMultiple, this.allowCreateDir, this.allowExistingFile, this.singleClick);
        }
        if (bc != null) {
            androidx.fragment.app.j jVar = new androidx.fragment.app.j(supportFragmentManager);
            jVar.h(R.id.fragment, bc, TAG, 2);
            jVar.e(true);
        }
    }

    @Override // androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putString("WORKAROUND_FOR_BUG_19917_KEY", "WORKAROUND_FOR_BUG_19917_VALUE");
        super.onSaveInstanceState(bundle);
    }
}
