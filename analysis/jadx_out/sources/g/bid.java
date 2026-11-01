package g;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class bid extends fyx {
    public static final String EXTRA_FILE_PATH = "fp";
    public static final String EXTRA_NEED_STORAGE_PERMISSION = "nsp";
    public static final String EXTRA_THEME_ADAPTIVE = "ta";
    public static final int REQUEST_CODE_WRITE_EXTERNAL_STORAGE = 202;
    private String fileName;
    private String fileParentPath;
    private String filePath;
    private Uri fileUri;
    private boolean isNeedStoragePermission = true;
    private boolean isThemeAdaptive;
    private bdn presenter;
    private Intent sourceIntent;

    @Override // g.fyx
    public void copyLink() {
        if (TextUtils.isEmpty(this.filePath) && this.fileUri == null) {
            showTipMessageInner(R.string.error_no_file);
        } else {
            fso.ae(this.context, "", TextUtils.isEmpty(this.filePath) ? this.fileUri.toString() : this.filePath, true);
        }
    }

    public final void e() {
        Intent intent = this.sourceIntent;
        if (intent != null) {
            Uri data = intent.getData();
            if (data != null) {
                this.fileUri = data;
                this.filePath = baf.bo(this.context, data, true);
            } else {
                String stringExtra = this.sourceIntent.getStringExtra(EXTRA_FILE_PATH);
                this.filePath = stringExtra;
                if (stringExtra != null) {
                    this.fileUri = Uri.fromFile(new File(this.filePath));
                }
            }
        }
        if (TextUtils.isEmpty(this.filePath)) {
            erl.y("Viewer filePath is empty, intent is " + this.sourceIntent);
        } else {
            int lastIndexOf = this.filePath.lastIndexOf(File.separator);
            String str = this.filePath;
            if (lastIndexOf != -1) {
                str = str.substring(lastIndexOf + 1);
            }
            this.fileName = str;
            this.fileParentPath = lastIndexOf == -1 ? "" : this.filePath.substring(0, lastIndexOf);
            Uri uri = this.fileUri;
            if (uri != null && "content".equals(uri.getScheme())) {
                String av = baf.av(this.context, this.fileUri);
                if (!TextUtils.isEmpty(av)) {
                    this.fileName = av;
                }
            }
            this.webViewArgs.setInitTitle(this.fileName);
            this.webViewArgs.setInitSubTitle(this.fileParentPath);
            setTitleAndSubTitle();
        }
        this.sourceIntent = null;
        this.presenter = new gtb(this.context, 11, this);
        if (TextUtils.isEmpty(this.filePath) && this.fileUri == null) {
            showTipMessageInner(R.string.error_no_file);
            return;
        }
        bdn bdnVar = this.presenter;
        String str2 = this.filePath;
        Uri uri2 = this.fileUri;
        gtb gtbVar = (gtb) bdnVar;
        gtbVar.getClass();
        ffb.as().execute(new eax(gtbVar, str2, uri2, 4));
    }

    @Override // g.fyx
    public int getCopyLinkTitle() {
        return R.string.copy_path;
    }

    @Override // g.fyx
    public int getLayoutId() {
        return R.layout.activity_webview_progress_center;
    }

    @Override // g.fyx
    public void initView() {
        super.initView();
        this.webView.setHorizontalScrollBarEnabled(true);
        this.webView.getSettings().setDefaultTextEncodingName("utf-8");
    }

    @Override // g.fyx
    public void initWebViewArgs() {
        super.initWebViewArgs();
        this.sourceIntent = getIntent();
        this.webViewArgs.setAutoSetTitle(false);
        this.webViewArgs.setAutoSetSubTitle(false);
        this.webViewArgs.setShareAttachmentText(null);
        this.webViewArgs.setShareable(true);
        this.webViewArgs.setShortcutable(true);
        this.webViewArgs.setCopyLinkable(true);
        this.webViewArgs.setZoomable(true);
        this.webViewArgs.setZoomChecked(cro.an(this.context, fyx.PREF_VIEWER_ZOOM, true));
        this.webViewArgs.setWrapable(true);
        this.webViewArgs.setWrapChecked(cro.an(this.context, fyx.PREF_VIEWER_WRAP, false));
        this.webViewArgs.setLineNumberable(true);
        this.webViewArgs.setLineNumberChecked(cro.an(this.context, fyx.PREF_VIEWER_LINE_NUMBER, true));
        this.isNeedStoragePermission = this.sourceIntent.getBooleanExtra(EXTRA_NEED_STORAGE_PERMISSION, true);
        this.isThemeAdaptive = this.sourceIntent.getBooleanExtra(EXTRA_THEME_ADAPTIVE, true);
    }

    @Override // g.dms, g.aa
    public boolean isDisplayHomeAsUpEnabled() {
        Boolean bool = this.isDisplayHomeAsUpEnabled;
        if (bool != null) {
            return bool.booleanValue();
        }
        Intent intent = getIntent();
        return (intent == null || !intent.hasExtra(fyx.EXTRA_IS_DISPLAY_HOME_AS_UP)) ? !isTaskRoot() : intent.getBooleanExtra(fyx.EXTRA_IS_DISPLAY_HOME_AS_UP, false);
    }

    @Override // g.dms, g.aa
    public boolean isEnterLeaveAnim() {
        Intent intent = getIntent();
        return (intent == null || !intent.hasExtra(fyx.EXTRA_IS_DISPLAY_HOME_AS_UP)) ? !isTaskRoot() : intent.getBooleanExtra(fyx.EXTRA_IS_DISPLAY_HOME_AS_UP, false);
    }

    @Override // g.fyx
    public void lineNumber(boolean z) {
        a.a.ab abVar = this.webView;
        if (abVar != null) {
            abVar.loadUrl(z ? "javascript:var ols = document.getElementsByTagName('ol'); if(ols.length > 0) { ols[0].style.listStyleType = 'decimal'; ols[0].style.paddingLeft = ''; var lis = ols[0].getElementsByTagName('li'); for(var i = 0; i < lis.length; i++) { lis[i].style.borderLeft = ''; lis[i].style.paddingLeft = ''; } } void(0);" : "javascript:var ols = document.getElementsByTagName('ol'); if(ols.length > 0) { ols[0].style.listStyleType = 'none'; ols[0].style.paddingLeft = '0'; var lis = ols[0].getElementsByTagName('li'); for(var i = 0; i < lis.length; i++) { lis[i].style.borderLeft = 'none'; lis[i].style.paddingLeft = '0'; } } void(0);");
        }
    }

    @Override // g.fyx
    public void loadData() {
        if (dyd.aa() || !this.isNeedStoragePermission) {
            e();
        } else {
            fyt.h(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 202);
        }
    }

    @Override // g.fyx, g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        if (intent != null && intent.getData() != null && !intent.hasExtra(EXTRA_FILE_PATH)) {
            dkn delegate = getDelegate();
            int i = (Resources.getSystem().getConfiguration().uiMode & 48) == 32 ? 2 : 1;
            dre dreVar = (dre) delegate;
            if (dreVar.bd != i) {
                dreVar.bd = i;
                if (dreVar.as) {
                    dreVar.cs(true, true);
                }
            }
        }
        super.onCreate(bundle);
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 202) {
            if (iArr.length > 0 && iArr[0] == 0 && eyt.am(this, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                e();
            } else {
                fyt.d(this.context, "android.permission.WRITE_EXTERNAL_STORAGE");
                finish();
            }
        }
    }

    @Override // g.fyx
    public void openWithOtherApp() {
        if (TextUtils.isEmpty(this.filePath) && this.fileUri == null) {
            showTipMessageInner(R.string.error_no_file);
            return;
        }
        try {
            fgj.e().f(this.context, baf.u(this.context, this.fileUri, this.filePath));
        } catch (RuntimeException e2) {
            erl.ac(e2);
            showTipMessageInner(R.string.no_permission);
        }
    }

    @Override // g.fyx
    public void setSubTitle(String str) {
        gs.k(this, this.webViewArgs.getInitSubTitle());
    }

    @Override // g.fyx
    public void share() {
        String str;
        if (TextUtils.isEmpty(this.filePath) && this.fileUri == null) {
            showTipMessageInner(R.string.error_no_file);
            return;
        }
        try {
            bdn bdnVar = this.presenter;
            String str2 = this.filePath;
            Uri uri = this.fileUri;
            gtb gtbVar = (gtb) bdnVar;
            gtbVar.getClass();
            try {
                str = gtbVar.v(uri, str2);
            } catch (xy e2) {
                throw new cni(e2);
            } catch (IOException e3) {
                erl.ai("ViewerPresenter read file for sharing", e3);
                str = null;
            }
            if (str == null) {
                showTipMessageInner(R.string.error_read_file_exception);
                return;
            }
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            StringBuilder o = awf.o(str);
            o.append(eyt.bk(this.webViewArgs.getShareAttachmentText()));
            intent.putExtra("android.intent.extra.TEXT", o.toString());
            intent.setType("text/plain");
            fgj e4 = fgj.e();
            Context context = this.context;
            e4.f(context, Intent.createChooser(intent, context.getText(R.string.share)));
        } catch (cni unused) {
            showTipMessageInner(R.string.error_file_too_large);
        }
    }

    @Override // g.fyx
    public void shortcut() {
        Intent intent;
        if ((TextUtils.isEmpty(this.filePath) && this.fileUri == null) || TextUtils.isEmpty(this.fileName)) {
            showTipMessageInner(R.string.error_no_file);
            return;
        }
        String au = eyt.au(TextUtils.isEmpty(this.filePath) ? this.fileUri.toString() : this.filePath);
        if (TextUtils.isEmpty(au)) {
            au = dlb.c();
        }
        if (TextUtils.isEmpty(this.filePath)) {
            intent = new Intent(this.context, (Class<?>) bid.class);
            intent.setData(this.fileUri);
            intent.addFlags(1);
        } else {
            intent = dov.e(this.context, this.filePath);
        }
        baf.v(this, au, this.fileName, R.drawable.fly, intent);
    }

    @Override // g.dmn
    public void showData(String str, String str2) {
        runOnUiThread(new gfh(1, this, str, false));
    }

    @Override // g.fyx
    public void wrap(boolean z) {
        a.a.ab abVar = this.webView;
        if (abVar != null) {
            abVar.loadUrl(z ? "javascript:document.getElementsByTagName('pre')[0].style.whiteSpace = 'pre-wrap'; document.getElementsByTagName('pre')[0].style.wordWrap = 'break-word'; void(0);" : "javascript:document.getElementsByTagName('pre')[0].style.whiteSpace = 'pre'; document.getElementsByTagName('pre')[0].style.wordWrap = 'normal'; void(0);");
        }
    }

    @Override // g.fyx
    public void zoom(boolean z) {
        super.zoom(z);
        this.webView.loadUrl("javascript:(function(){var meta = document.querySelector('meta[name=\"viewport\"]');if (!meta) {  meta = document.createElement('meta');  meta.name = 'viewport';  document.head.appendChild(meta);}if (" + z + ") {  meta.content = 'width=device-width, user-scalable=yes';} else {  meta.content = 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no';}})()");
    }
}
