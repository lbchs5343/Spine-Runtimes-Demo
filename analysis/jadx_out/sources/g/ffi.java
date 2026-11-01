package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes.dex */
public final class ffi implements ekf {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f16701c;

    /* renamed from: d, reason: collision with root package name */
    public Context f16702d;

    public /* synthetic */ ffi(int i) {
        this.f16701c = i;
    }

    public ffi(Context context) {
        this.f16701c = 1;
        bff.p(context, "context");
        this.f16702d = context;
    }

    public static String e(dgk dgkVar) {
        return "item" + dgkVar.getId() + "_" + eyt.bk(dgkVar.getEventId()) + "_c_time";
    }

    public static Intent f(Context context, dgk dgkVar) {
        if (TextUtils.isEmpty(dgkVar.getPath())) {
            return null;
        }
        int pathType = dgkVar.getPathType();
        if (pathType != 1) {
            if (pathType == 2) {
                return context.getPackageManager().getLaunchIntentForPackage(dgkVar.getPath());
            }
            if (pathType == 3) {
                String[] split = dgkVar.getPath().split("//");
                if (split.length < 2) {
                    return null;
                }
                Intent intent = new Intent();
                intent.setComponent(new ComponentName(split[0], split[1]));
                return intent.setFlags(C.ENCODING_PCM_MU_LAW);
            }
            if (pathType != 4 && pathType != 5) {
                return null;
            }
        }
        return new Intent("android.intent.action.VIEW", Uri.parse(dgkVar.getPath())).setFlags(C.ENCODING_PCM_MU_LAW);
    }

    @Override // g.ekf
    public final androidx.recyclerview.widget.p a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        switch (this.f16701c) {
            case 0:
                View inflate = layoutInflater.inflate(R.layout.item_image_text, viewGroup, false);
                Context context = this.f16702d;
                gzn gznVar = new gzn(inflate);
                gznVar.al = false;
                gznVar.am = context;
                gznVar.al = context.getResources().getBoolean(R.bool.tool_name_filter_space);
                gznVar.ao = (ImageView) inflate.findViewById(R.id.icon);
                gznVar.an = (ImageView) inflate.findViewById(R.id.dot);
                gznVar.ak = (TextView) inflate.findViewById(R.id.name);
                return gznVar;
            case 1:
                bff.p(layoutInflater, "layoutInflater");
                View inflate2 = layoutInflater.inflate(R.layout.item_window_window_viewer, viewGroup, false);
                bff.e(inflate2, "inflate(...)");
                return new eyk(inflate2);
            default:
                View inflate3 = layoutInflater.inflate(R.layout.item_image_text, viewGroup, false);
                ctx ctxVar = (ctx) this.f16702d;
                cwh cwhVar = new cwh(inflate3);
                cwhVar.al = ctxVar;
                cwhVar.ak = (ImageView) inflate3.findViewById(R.id.icon);
                cwhVar.an = (ImageView) inflate3.findViewById(R.id.dot);
                cwhVar.am = (TextView) inflate3.findViewById(R.id.name);
                return cwhVar;
        }
    }

    @Override // g.ekf
    public final void b(androidx.recyclerview.widget.p pVar, cng cngVar) {
        switch (this.f16701c) {
            case 0:
                gzn gznVar = (gzn) pVar;
                ert ertVar = (ert) cngVar;
                Context context = gznVar.am;
                TextView textView = gznVar.ak;
                ImageView imageView = gznVar.ao;
                if (gznVar.al) {
                    textView.setText(ertVar.z(context).replace(" ", ""));
                } else {
                    textView.setText(ertVar.z(context));
                }
                if (!ertVar.x) {
                    bff.g(textView, ertVar.m ? R.style.ToolNameNormalFont : R.style.ToolNameGrayFont);
                    gznVar.an.setVisibility(ertVar.f16054c ? 0 : 8);
                    int i = ertVar.o;
                    if (i == 1) {
                        if (ertVar.f16055d > 0) {
                            imageView.setVisibility(0);
                            imageView.setImageResource(ertVar.f16055d);
                            break;
                        }
                    } else if (i == 2) {
                        imageView.setVisibility(0);
                        if (!TextUtils.isEmpty(ertVar.y)) {
                            akf.k().l(ertVar.y).d(imageView);
                            break;
                        }
                    } else if (i == 3) {
                        imageView.setVisibility(0);
                        imageView.setImageBitmap(ffb.by(ertVar.f16052a));
                        break;
                    }
                } else {
                    imageView.setImageDrawable(null);
                    break;
                }
                break;
            case 1:
                eyk eykVar = (eyk) pVar;
                Context context2 = this.f16702d;
                bfr bfrVar = (bfr) cngVar;
                bff.p(context2, "context");
                TextView textView2 = eykVar.al;
                textView2.setText(bfrVar.f11469c);
                TextView textView3 = eykVar.ak;
                textView3.setText(eyt.bk(bfrVar.f11468b));
                if (!bfrVar.f11467a) {
                    textView3.setTextColor(eyt.af(context2, R.color.colorWindow));
                    textView2.setTextColor(eyt.af(context2, R.color.colorWindow));
                    break;
                } else {
                    textView3.setTextColor(eyt.af(context2, R.color.colorPrimary));
                    textView2.setTextColor(eyt.af(context2, R.color.colorPrimary));
                    break;
                }
            default:
                cwh cwhVar = (cwh) pVar;
                dgk dgkVar = (dgk) cngVar;
                View view = cwhVar.n;
                ImageView imageView2 = cwhVar.ak;
                TextView textView4 = cwhVar.am;
                ctx ctxVar = cwhVar.al;
                textView4.setText(dgkVar.getName(ctxVar));
                if (!dgkVar.isSpace()) {
                    cwhVar.an.setVisibility(dgk.isShowCornerTipNow(ctxVar, dgkVar) ? 0 : 8);
                    int iconType = dgkVar.getIconType();
                    if (iconType != 1) {
                        if (iconType == 2) {
                            imageView2.setVisibility(0);
                            if (!TextUtils.isEmpty(dgkVar.getIconUrl())) {
                                akf.k().l(dgkVar.getIconUrl()).d(imageView2);
                            }
                        } else if (iconType == 3) {
                            imageView2.setVisibility(0);
                            imageView2.setImageBitmap(ffb.by(dgkVar.getIconText()));
                        }
                    } else if (dgkVar.getIconResId() > 0) {
                        imageView2.setVisibility(0);
                        imageView2.setImageResource(dgkVar.getIconResId());
                    }
                    if (dgkVar.getOnClickListener() == null) {
                        view.setOnClickListener(new eoh(cwhVar, 1, dgkVar));
                        break;
                    } else {
                        view.setOnClickListener(dgkVar.getOnClickListener());
                        break;
                    }
                } else {
                    imageView2.setImageDrawable(null);
                    break;
                }
        }
    }
}
