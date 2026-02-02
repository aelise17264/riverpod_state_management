# Riverpod
##### ***more modern version of provider, made by same dev team***
- create a Provider - an object (dynamic) value & methods that can change the value in the end
    - Provider() - holds static data
    - StateNoifierProvider() - optimized for data that can change
    - StateNotifier - must be used with StateNotifierProvider
        - a class that extends StateNotifier (much like how stateful widgets must use state)
        - must set type on StateNotifier
        - includes an initialized value of return type (through the super()) & the methods that exists to change that value
        - CANNOT EDIT AN EXISTING VALUE IN MEMORY, YOU ALWAYS HAVE TO CREATE A NEW ONE
        - state property globally available through StateNotifier class, holds our data
- Consumer - connects to provider anywhere in app, listens to changes in provider & also can have methods that can change the value; can be set up in any widget to directly plug into the provider
- wrap the app widget in the main runApp call in a ProviderScope widget to give the entire app access to Riverpod features
- more useful when we have dynamic data & cross-widget state
- StatefulWidget --> ComsumerStatefulWidget <br>
State --> ConsumerState <br>
StatelessWidget --> ConsumerWidget
- ref - allows us to set up listeners in our widgets to listen to the providers
     - ref.read - get data from the provider once
    - ref.watch(providerName) - sets up listener to trigger a rebuild when data changes (
        - Riverpod docs suggest using this as often as possible)
        - infers type that is returned in the provider
    - WidgetRef - parameter added to build method that allows stateless widgets to listen to providers, it is implied in stateful widgets



