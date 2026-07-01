# How to use
1. Clone this repo
2. Citadel theme should be at /Extras/Citadel, making it look like this:
```fish
dietpi@DietPi ~/Paymenter> ls Extras/Citadel/
app/  extensions/  public/  themes/
dietpi@DietPi ~/Paymenter> 
```
3. Execute ./update.sh and done (Use sudo if possible, it will use docker command soo sudo is the safest method to be 100% sure that it will work, or you can add docker group to your user)

# IMPORTANT NOTE!
This theme is not free, you should buy the Citadel theme [here](https://builtbybit.com/resources/citadel-theme-paymenter.82217/)
Im not associated with Citadel, just a consumer that love FOSS and love help the community to have good solutions <3

The theme itself have an issue in `/Extras/Citadel/themes/citadel/views/components/navigation/footer.blade.php` and you will require to replace the full line that contains "GLOB_BRACE" with this:
```php
                                $files = array_merge(
                                    glob($assetsPath . '/gateway*.png') ?: [],
                                    glob($assetsPath . '/gateway*.svg') ?: [],
                                    glob($assetsPath . '/gateway*.jpg') ?: [],
                                    glob($assetsPath . '/gateway*.jpeg') ?: [],
                                );
```
