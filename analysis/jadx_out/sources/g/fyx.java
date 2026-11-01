package g;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebSettings;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class fyx extends cms implements dmn, View.OnClickListener {
    public static final String EXTRA_IS_DISPLAY_HOME_AS_UP = "idhau";
    public static final String EXTRA_IS_FINDABLE = "ifa";
    public static final String EXTRA_IS_FIND_SHOWED = "ifs";
    public static final String PREF_VIEWER_LINE_NUMBER = "pref_viewer_line_number";
    public static final String PREF_VIEWER_WRAP = "pref_viewer_wrap";
    public static final String PREF_VIEWER_ZOOM = "pref_viewer_zoom";
    public static final String STORAGE_KEY_SHOW_WEB_VIEW_BANNER_AD = "web_b_a_s";
    private ImageView closeIV;
    protected Context context;
    private EditText findET;
    private View findLayout;
    private InputMethodManager inputManager;
    private ImageView lastIV;
    private CharSequence lastTitle;
    private String lastUrl;
    private TextView matchResultTV;
    private ImageView nextIV;
    protected a.a.ab webView;
    protected gbt webViewArgs;
    private boolean isNotFound = true;
    private String lastUrlWhenAdShow = null;
    protected Boolean isDisplayHomeAsUpEnabled = null;

    public final void af() {
        Editable text = this.findET.getText();
        if (text != null) {
            String obj = text.toString();
            if (TextUtils.isEmpty(obj)) {
                return;
            }
            if (dyd.ar(16)) {
                this.webView.findAll(obj);
            } else {
                this.webView.findAllAsync(obj);
            }
            this.isNotFound = false;
            View currentFocus = getCurrentFocus();
            if (currentFocus != null) {
                this.inputManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 2);
            }
        }
    }

    public final void ag(String str) {
        if (!cux.ah(str, this.lastUrlWhenAdShow) || str == null) {
            this.lastUrlWhenAdShow = str;
            if (byh.r(this, STORAGE_KEY_SHOW_WEB_VIEW_BANNER_AD, false) && byh.aj(this.context)) {
                bannerAdInit(getString(R.string.ad_app_c), getString(R.string.ad_unit_id_web_c));
                bannerAdShow();
            }
        }
    }

    public final void ah() {
        InputMethodManager inputMethodManager;
        this.webView.clearMatches();
        this.isNotFound = true;
        View view = this.findLayout;
        if (view != null) {
            view.setVisibility(8);
            this.matchResultTV.setText("");
            this.findET.setText("");
        }
        View currentFocus = getCurrentFocus();
        if (currentFocus == null || (inputMethodManager = this.inputManager) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 2);
    }

    public void copyLink() {
        fso.ae(this.context, "", this.webView.getUrl(), true);
    }

    public void findViewControl() {
        View view = this.findLayout;
        if (view == null) {
            return;
        }
        if (view.getVisibility() == 0) {
            ah();
            return;
        }
        this.findLayout.setVisibility(0);
        this.findET.requestFocus();
        this.findET.selectAll();
        this.inputManager.showSoftInput(this.findET, 0);
    }

    public int getCopyLinkTitle() {
        return R.string.copy_link;
    }

    public abstract int getLayoutId();

    public int getShortcutIconResId() {
        return R.drawable.fly;
    }

    public void initData() {
        if (preInitData()) {
            this.webView.setWebViewClient(new doe(0, this));
            this.webView.setWebChromeClient(new fjy(this, 0));
            if (!TextUtils.isEmpty(this.webViewArgs.getInitUrl()) && this.webViewArgs.isAutoSetSubTitle()) {
                setSubTitle(this.webViewArgs.getInitUrl());
            }
            setTitleAndSubTitle();
            loadData();
        }
    }

    public void initView() {
        a.a.ab abVar = (a.a.ab) findViewById(R.id.web_view);
        this.webView = abVar;
        abVar.bindProgressBar((ProgressBar) findViewById(R.id.progress_bar));
        this.webView.setUAAppName(this.webViewArgs.getUAAppName());
        this.webView.setShowOverrideFailTips(this.webViewArgs.isShowOverrideFailTips());
        HashMap hashMap = fnp.f17095b;
        if ("oppo".equalsIgnoreCase(Build.MANUFACTURER) && dyd.bq(28)) {
            this.webView.setLayerType(1, null);
        }
        View findViewById = findViewById(R.id.find_layout);
        this.findLayout = findViewById;
        findViewById.setVisibility(this.webViewArgs.isFindShowed() ? 0 : 8);
        EditText editText = (EditText) findViewById(R.id.find_text);
        this.findET = editText;
        editText.setOnKeyListener(new fjw(this));
        this.matchResultTV = (TextView) findViewById(R.id.match_result);
        this.lastIV = (ImageView) findViewById(R.id.last);
        this.nextIV = (ImageView) findViewById(R.id.next);
        this.closeIV = (ImageView) findViewById(R.id.close);
        this.nextIV.setOnClickListener(this);
        this.lastIV.setOnClickListener(this);
        this.closeIV.setOnClickListener(this);
        if (dyd.bp(16)) {
            this.webView.setFindListener(new dgu(this));
        }
        this.webView.setLayerType(2, null);
        WebSettings settings = this.webView.getSettings();
        boolean isZoomChecked = this.webViewArgs.isZoomChecked();
        settings.setDisplayZoomControls(isZoomChecked);
        settings.setSupportZoom(isZoomChecked);
        settings.setBuiltInZoomControls(isZoomChecked);
        ag(this.webViewArgs.getInitUrl());
    }

    public void initWebViewArgs() {
        this.webViewArgs = new gbt();
        Intent intent = getIntent();
        if (intent != null) {
            this.webViewArgs.setFindAble(intent.getBooleanExtra(EXTRA_IS_FINDABLE, true));
            this.webViewArgs.setFindShowed(intent.getBooleanExtra(EXTRA_IS_FIND_SHOWED, false));
            if (intent.hasExtra(EXTRA_IS_DISPLAY_HOME_AS_UP)) {
                this.isDisplayHomeAsUpEnabled = Boolean.valueOf(intent.getBooleanExtra(EXTRA_IS_DISPLAY_HOME_AS_UP, false));
                if (getSupportActionBar() != null) {
                    getSupportActionBar().ai(isDisplayHomeAsUpEnabled());
                }
            }
        }
    }

    public void lineNumber(boolean z) {
    }

    public abstract void loadData();

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        if (id == this.lastIV.getId()) {
            if (this.isNotFound) {
                af();
                return;
            } else {
                this.webView.findNext(false);
                return;
            }
        }
        if (id != this.nextIV.getId()) {
            if (id == this.closeIV.getId()) {
                ah();
            }
        } else if (this.isNotFound) {
            af();
        } else {
            this.webView.findNext(true);
        }
    }

    @Override // g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ckd.af(byh.ax(this, "dark_mode", "follow_system"));
        setContentView(getLayoutId());
        this.context = this;
        this.inputManager = (InputMethodManager) getSystemService("input_method");
        initWebViewArgs();
        initView();
        initData();
        getOnBackPressedDispatcher().i(this, new bcn(0, this));
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.webview, menu);
        menu.findItem(R.id.share).setVisible(this.webViewArgs.isShareable());
        menu.findItem(R.id.shortcut).setVisible(this.webViewArgs.isShortcutable());
        if (this.webViewArgs.isCopyLinkable()) {
            menu.findItem(R.id.copy_link).setTitle(getCopyLinkTitle());
        } else {
            menu.findItem(R.id.copy_link).setVisible(false);
        }
        if (this.webViewArgs.isZoomable()) {
            menu.findItem(R.id.zoom).setChecked(this.webViewArgs.isZoomChecked());
        } else {
            menu.findItem(R.id.zoom).setVisible(false);
        }
        if (this.webViewArgs.isWrapable()) {
            menu.findItem(R.id.wrap).setChecked(this.webViewArgs.isWrapChecked());
        } else {
            menu.findItem(R.id.wrap).setVisible(false);
        }
        if (this.webViewArgs.isLineNumberable()) {
            menu.findItem(R.id.line_number).setChecked(this.webViewArgs.isLineNumberChecked());
        } else {
            menu.findItem(R.id.line_number).setVisible(false);
        }
        menu.findItem(R.id.open_with_other_app).setVisible(this.webViewArgs.isOpenWithOtherApp());
        menu.findItem(R.id.find).setVisible(this.webViewArgs.isFindAble());
        return super.onCreateOptionsMenu(menu);
    }

    @Override // g.cms, g.dms, g.ub, androidx.fragment.app.u, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.webView.unBindProgressBar();
    }

    @Override // g.dms, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (!this.clickInterval.b()) {
            return super.onOptionsItemSelected(menuItem);
        }
        int itemId = menuItem.getItemId();
        if (itemId == R.id.share) {
            share();
            return true;
        }
        if (itemId == R.id.refresh) {
            loadData();
            return true;
        }
        if (itemId == R.id.shortcut) {
            shortcut();
            return true;
        }
        if (itemId == R.id.copy_link) {
            copyLink();
            return true;
        }
        if (itemId == R.id.zoom) {
            menuItem.setChecked(!menuItem.isChecked());
            this.webViewArgs.setZoomChecked(menuItem.isChecked());
            cro.af(this.context, PREF_VIEWER_ZOOM, menuItem.isChecked());
            WebSettings settings = this.webView.getSettings();
            boolean isChecked = menuItem.isChecked();
            settings.setDisplayZoomControls(isChecked);
            settings.setSupportZoom(isChecked);
            settings.setBuiltInZoomControls(isChecked);
            zoom(menuItem.isChecked());
            return true;
        }
        if (itemId == R.id.wrap) {
            menuItem.setChecked(!menuItem.isChecked());
            this.webViewArgs.setWrapChecked(menuItem.isChecked());
            cro.af(this.context, PREF_VIEWER_WRAP, menuItem.isChecked());
            wrap(menuItem.isChecked());
            return true;
        }
        if (itemId == R.id.line_number) {
            menuItem.setChecked(!menuItem.isChecked());
            this.webViewArgs.setLineNumberChecked(menuItem.isChecked());
            cro.af(this.context, PREF_VIEWER_LINE_NUMBER, menuItem.isChecked());
            lineNumber(menuItem.isChecked());
            return true;
        }
        if (itemId == R.id.open_with_other_app) {
            openWithOtherApp();
            return true;
        }
        if (itemId != R.id.find) {
            return super.onOptionsItemSelected(menuItem);
        }
        findViewControl();
        return true;
    }

    public void openWithOtherApp() {
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.webView.getUrl())).setFlags(C.ENCODING_PCM_MU_LAW));
        } catch (Exception unused) {
            gm.e(this.context, R.string.start_activity_failed);
        }
    }

    public boolean preInitData() {
        return true;
    }

    public void setSubTitle(String str) {
        if (TextUtils.isEmpty(str) || str.equals(this.lastUrl)) {
            return;
        }
        this.lastUrl = str;
        try {
            URI uri = new URI(str);
            if (!this.webViewArgs.isSubtitleShowFullUrl()) {
                StringBuilder sb = new StringBuilder();
                String[] strArr = {uri.getScheme(), "://"};
                String str2 = "";
                if (!acw.n(strArr)) {
                    StringBuilder sb2 = new StringBuilder();
                    int i = 0;
                    while (true) {
                        if (i >= 2) {
                            str2 = sb2.toString();
                            break;
                        }
                        String str3 = strArr[i];
                        if (TextUtils.isEmpty(str3)) {
                            break;
                        }
                        sb2.append(str3);
                        i++;
                    }
                }
                sb.append(str2);
                sb.append(uri.getAuthority());
                str = sb.toString();
            }
            gs.k(this, str);
        } catch (URISyntaxException e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence) || charSequence.equals(this.lastTitle)) {
            return;
        }
        this.lastTitle = charSequence;
        super.setTitle(charSequence);
    }

    public void setTitleAndSubTitle() {
        if (!TextUtils.isEmpty(this.webViewArgs.getInitTitle())) {
            setTitle(this.webViewArgs.getInitTitle());
        }
        if (TextUtils.isEmpty(this.webViewArgs.getInitSubTitle())) {
            return;
        }
        gs.k(this, this.webViewArgs.getInitSubTitle());
    }

    public void share() {
        String title = this.webView.getTitle();
        if (!TextUtils.isEmpty(title)) {
            if (title.equals(this.webView.getUrl())) {
                title = "";
            } else {
                title = this.webView.getTitle() + " ";
            }
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", eyt.bk(title) + this.webView.getUrl() + eyt.bk(this.webViewArgs.getShareAttachmentText()));
        intent.setType("text/plain");
        fgj e2 = fgj.e();
        Context context = this.context;
        e2.f(context, Intent.createChooser(intent, context.getText(R.string.share)));
    }

    public void shortcut() {
        String au = eyt.au(this.webView.getUrl());
        if (TextUtils.isEmpty(au)) {
            au = dlb.c();
        }
        baf.v(this, au, TextUtils.isEmpty(this.webView.getTitle()) ? getString(R.string.app_name) : this.webView.getTitle(), getShortcutIconResId(), dov.f(this.context, this.webView.getUrl(), this.webView.getTitle(), null, this.webViewArgs.getShareAttachmentText(), a.a.a.class));
    }

    @Override // g.dmn
    public void showTipMessage(int i) {
        runOnUiThread(new dj(this, i, 0));
    }

    public void showTipMessageInner(int i) {
        gm.e(this.context, i);
    }

    public void wrap(boolean z) {
        a.a.ab abVar = this.webView;
        if (abVar != null) {
            WebSettings settings = abVar.getSettings();
            if (z) {
                settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
            } else {
                settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
            }
            this.webView.reload();
        }
    }

    public void zoom(boolean z) {
    }
}
