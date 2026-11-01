package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public class drq extends IOException {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f14681a = 0;

    public static drq b() {
        return new drq("Protocol message had invalid UTF-8.");
    }

    public static drq c() {
        return new drq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static drq d() {
        return new drq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
