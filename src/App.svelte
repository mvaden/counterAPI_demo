<script>
	let data = {
		incrementCount: undefined,
		loading: false
	} 

	async function getHits() {
		data.loading = true;
		let response = await fetch('https://api.countapi.xyz/hit/1ccb732e-b55a-4404-ad3f-0f99c02fe44e');
		let hits = await response.json();
		data = {
			incrementCount: hits.value,
			loading: false
		}
	}
</script>

<main>
	<div>
		<button on:click={getHits}>Update hits</button>
		<div>
			<span>Hits: </span>
			
			{#if data.loading === true}
			<span>Getting hits...</span>

			{:else if data.incrementCount !== undefined}
			<span>{data.incrementCount}</span>

			{/if}
		<div>
	</div>
</main>

<style>

</style>