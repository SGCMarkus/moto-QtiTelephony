.class public Landroidx/core/app/ActivityCompat;
.super Landroidx/core/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityCompat$Api16Impl;
    }
.end annotation


# direct methods
.method public static finishAffinity(Landroid/app/Activity;)V
    .locals 0

    .line 298
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api16Impl;->finishAffinity(Landroid/app/Activity;)V

    return-void
.end method

.method public static recreate(Landroid/app/Activity;)V
    .locals 0

    .line 661
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
